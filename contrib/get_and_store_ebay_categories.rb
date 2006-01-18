#!/usr/bin/env ruby
# $Id: get_and_store_ebay_categories.rb,v 1.1 2006/01/18 09:30:17 garrydolley Exp $
#
# == Copyright
#
# Copyright (c) 2005,2006 Garry C. Dolley
#
# This file is part of eBay4R.
#
# eBay4R is free software; you can redistribute it and/or modify it under the
# terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later 
# version.
#
# eBay4R is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
# 
# You should have received a copy of the GNU General Public License along with
# eBay4R; if not, write to the Free Software Foundation, Inc., 51 Franklin
# Street, Fifth Floor, Boston, MA  02110-1301, USA
#
# Created : 01/16/2006
#
# == Synopsis 
#
# This script will retrieve the entire eBay Category tree for a specified eBay
# site (site_id) and store it in a MySQL database.
#
# == Database
#
# The schema used is as follows:
#
#   CREATE TABLE ebay_categories (
#     id int(11) NOT NULL auto_increment,
#     site_id smallint(6) default NULL,
#     category_id varchar(10) NOT NULL default '',
#     category_parent_id varchar(10) default NULL,
#     category_name varchar(128) NOT NULL default '',
#     category_level int(11) default NULL,
#     leaf_category tinyint(1) NOT NULL default '0',
#     expired tinyint(1) NOT NULL default '0',
#     virtual tinyint(1) NOT NULL default '0',
#     auto_pay_enabled tinyint(1) NOT NULL default '0',
#     b2b_vat_enabled tinyint(1) NOT NULL default '0',
#     best_offer_enabled tinyint(1) NOT NULL default '0',
#     intl_autos_fixed_cat tinyint(1) NOT NULL default '0',
#     lsd tinyint(1) NOT NULL default '0',
#     orpa tinyint(1) NOT NULL default '0',
#     orra tinyint(1) NOT NULL default '0',
#     PRIMARY KEY  (id),
#     UNIQUE KEY site_id (site_id,category_id),
#     KEY category_id (category_id),
#     KEY category_parent_id (category_parent_id),
#     CONSTRAINT ebay_categories_ibfk_1 FOREIGN KEY (category_parent_id) 
#                                       REFERENCES ebay_categories (category_id)
#  ) ENGINE=InnoDB DEFAULT CHARSET=latin1 
#
# and
#
#   CREATE TABLE ebay_categories_info (
#     id int(11) NOT NULL auto_increment,
#     site_id smallint(6) default NULL,
#     category_version varchar(16) NOT NULL default '',
#     minimum_reserve_price double default NULL,
#     reduce_reserve_allowed tinyint(1) NOT NULL default '0',
#     reserve_price_allowed tinyint(1) NOT NULL default '0',
#     update_time datetime default NULL,
#     PRIMARY KEY  (id)
#     UNIQUE KEY site_id (site_id)
#   ) ENGINE=MyISAM DEFAULT CHARSET=latin1
#
# == Usage
#
#    ./get_and_store_ebay_categories.rb -s site_id [ -t | --table TABLE_BASE_NAME ] [ -h | --host HOST ] [ -d | --database DB ] [ -u | --user USER ] [ -p | --password PW ] [ --debug ] [ -c concurrency ]
#
#    Example site IDs: 0 = eBay USA, 2 = eBay Canada, 100 = eBay Motors
#
#    Just like the examples/ directory, you need a file named "myCredentials.rb" in the current directory or Ruby load path.
#
#    The "-c concurrency" command line option says how many category nodes we retrieve at a time.  Default is 20.
#    If you are getting out of memory errors, reduce this number.
#    If you have lots of memory, you can increase this number and the import will be faster.
#
#    Note: The eBay Category tree is very large.  This script can run for 20 minutes or longer.

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'eBayAPI'

require 'optparse'
require 'rdoc/usage'

begin
  require 'rubygems'
  require_gem 'mysql'
rescue LoadError
  require 'mysql'
end

#
# Set defaults and parse command line args
#

mysql_hostname = 'localhost'
mysql_database = 'test'
mysql_username = 'test'
mysql_password = ''

site_id     = 0
table_name  = "ebay_categories"
concurrency = 20

debug      = false

opts = OptionParser.new
opts.on("-h", "--help")   { RDoc::usage('usage') }
opts.on("-s SITE_ID")     { |sid| site_id = sid }
opts.on("-c concurrency") { |c| concurrency = c.to_i }

opts.on("-h", "--host HOST")   { |h| mysql_hostname = h }
opts.on("-d", "--database DB") { |d| mysql_database = d }
opts.on("-u", "--user USER")   { |u| mysql_username = u }
opts.on("-p", "--password PW") { |p| mysql_password = p }
opts.on("--debug")             { debug = true }

opts.on("-t", "--table TABLE_NAME") { |t| table_name = t }

opts.parse(ARGV) rescue RDoc::usage('usage')

if ARGV.size < 1 
  RDoc::usage('usage')
  exit
end

#
# Open MySQL database
#

mysql = Mysql.new(mysql_hostname, mysql_username, mysql_password)
mysql.select_db(mysql_database)

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)
eBay.debug = true if debug

parents_to_process = [ :id => '', :depth => 0 ]

#
# Traverse entire category tree and import into our database
#

puts "Starting import...  Go get some coffee, this is going to take a while..."

imported_site_wide_info = false
i = 0
while (some_parents = parents_to_process.first(concurrency)).length > 0
  seek_depth = some_parents.max { |a,b| a[:depth] <=> b[:depth] }
  seek_depth = seek_depth[:depth] + 1

  if debug
    puts "Current process queue:"
    p parents_to_process
    puts "Up next:"
    p some_parents
  end

  resp = eBay.GetCategories(:DetailLevel => 'ReturnAll', # Return all available info
                            :CategorySideID => site_id,
                            :CategoryParent => (some_parents[0][:id] == '' && some_parents.length == 1) ? '' : some_parents.collect { |a| a[:id] },
                            :ViewAllNotes => true,
                            :LevelLimit => seek_depth)

  parents_to_process -= some_parents

  if !imported_site_wide_info
    mysql.query("DELETE FROM #{table_name}_info WHERE site_id = #{site_id}")

    mysql.query("INSERT INTO #{table_name}_info VALUES (null, '#{site_id}', '#{resp.categoryVersion}', '#{resp.minimumReservePrice}', #{resp.reduceReserveAllowed},
                                                               #{resp.reservePriceAllowed}, '#{resp.updateTime}')")
    
    imported_site_wide_info = true
  end

  if resp.categoryCount.to_i > 0
    [resp.categoryArray.category].flatten.each do |cat|
      if cat.categoryLevel.to_i == seek_depth
        if cat.leafCategory == "false"
          parents_to_process << { :id => cat.categoryID, :depth => cat.categoryLevel.to_i }
          puts "Added Category ##{cat.categoryID} to process queue..." if debug
        end
      end

      # Make sure we don't try to INSERT a category we already have
      r = mysql.query("SELECT category_id FROM #{table_name} WHERE category_id = #{cat.categoryID} AND site_id = #{site_id}")

      if r.num_rows < 1
        if cat.categoryID == cat.categoryParentID
          cat.categoryParentID = "null"
        else
          cat.categoryParentID = "'#{cat.categoryParentID}'"
        end

        cat.categoryName = mysql.escape_string(cat.categoryName)

        # Determine values of conditional fields
        auto_pay   = cat.respond_to?(:autoPayEnabled) ? cat.autoPayEnabled : false
        b2b_vat    = cat.respond_to?(:b2BVATEnabled) ? cat.b2BVATEnabled : false
        best_offer = cat.respond_to?(:bestOfferEnabled) ? cat.bestOfferEnabled : false
        orra       = cat.respond_to?(:oRRA) ? cat.oRRA : false
        sge        = cat.respond_to?(:sellerGuaranteeEligible) ? cat.sellerGuaranteeEligible : false

        puts "Inserting Category ##{cat.categoryID}: #{cat.categoryName}..." if debug
  
        #
        # Do the actual writing to the database
        #
        mysql.query("INSERT INTO   #{table_name} 
                     VALUES (null, '#{site_id}', '#{cat.categoryID}', #{cat.categoryParentID}, '#{cat.categoryName}', '#{cat.categoryLevel}', #{cat.leafCategory},
                                    #{cat.expired}, #{cat.virtual}, #{auto_pay}, #{b2b_vat}, #{best_offer}, #{cat.intlAutosFixedCat}, #{cat.lSD}, #{cat.oRPA}, #{orra},
                                    #{sge})")

        i += 1
        puts "Imported #{i} categories so far..." if i % 100 == 0
      end
    end
  end
end

mysql.close
