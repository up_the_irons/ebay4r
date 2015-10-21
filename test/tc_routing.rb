#!/usr/bin/env ruby

#--
# $Id: tc_routing.rb,v 1.1 2006/01/07 08:15:48 garrydolley Exp $
#
# Copyright (c) 2005 Garry C. Dolley
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
#++

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'test/unit'
require 'eBayAPI'

load(File.join(File.dirname(__FILE__), "..", "config", "test-credentials.rb"))

class TestRouting < Test::Unit::TestCase
  @@eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true, :site_id => 100)

  # If our routing works correctly, the GetCategories call should go to eBay Motors instead of default US site
  def test_ebay_motors_categories

    # Call "GetCategories"
    resp = @@eBay.GetCategories(:DetailLevel => 'ReturnAll', :CategorySideID => 100, :LevelLimit => 1)
 
    assert_respond_to(resp, "timestamp")
    assert_respond_to(resp, "ack")
    assert_equal(resp.ack, "Success")

    assert_equal(resp.categoryArray[0].categoryName, "eBay Motors")
  end

end
