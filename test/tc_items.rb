#!/usr/bin/env ruby

#--
# $Id: tc_items.rb,v 1.3 2006/01/07 07:57:15 garrydolley Exp $
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

# This file must be in the current directory your $RUBYLIB environment var.
load('myCredentials.rb')

$eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

class TestItems < Test::Unit::TestCase
  @@item_title = 'eBay4R Test Case Item';
  @@item_descr = 'eBay API for Ruby @ http://ebay4r.rubyforge.org/';

  def test_add_item
    resp = $eBay.AddItem(:Item => EBay.Item(:PrimaryCategory => EBay.Category(:CategoryID => 57882),
                                            :Title => @@item_title,
                                            :Description => @@item_descr,
                                            :Location => 'RubyForge',
                                            :StartPrice => 12.0,
                                            :Quantity => 1,
                                            :ListingDuration => "Days_7",
                                            :Country => "US",
                                            :Currency => "USD",
                                            :PaymentMethods => ["VisaMC", "PersonalCheck"]))

    assert_respond_to(resp, "timestamp")
    assert_respond_to(resp, "ack")
    assert_equal(resp.ack, "Success")

    assert_respond_to(resp, "itemID")
    assert_not_nil(resp.itemID)

    @@item_id = resp.itemID

    assert_respond_to(resp, "fees")
  end

  def test_add_item_no_params
    assert_raise(EBay::Error::ApplicationError) { $eBay.AddItem() }
  end

  def test_get_item
    resp = $eBay.GetItem(:DetailLevel => 'ReturnAll', :ItemID => @@item_id)

    assert_respond_to(resp, "timestamp")
    assert_respond_to(resp, "ack")
    assert_equal(resp.ack, "Success")

    assert_equal(resp.item.title, @@item_title)
    assert_equal(resp.item.description, @@item_descr)
  end

end
