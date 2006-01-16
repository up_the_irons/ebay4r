#!/usr/bin/env ruby
# $Id: get_categories.rb,v 1.2 2006/01/16 09:52:56 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'eBayAPI'

#
# Example of GetCategories call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Call "GetCategories"
resp = eBay.GetCategories(:DetailLevel => 'ReturnAll', # Return all available info
                          :CategorySideID => 0,        # US site
                          :LevelLimit => 1)            # Only 1 level deep

# Report results

puts "eBay Top Level Categories for US site (Cat. Version " + resp.categoryVersion + "):"
puts ""

resp.categoryArray.category.each do |cat|
  puts "  Category Name : " + cat.categoryName
  puts "  Category ID   : " + cat.categoryID
  puts "  Category Level: " + cat.categoryLevel
  puts "  Is Leaf?      : " + cat.leafCategory
  puts "  Parent ID     : " + cat.categoryParentID
  puts ""
end
