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

load(File.join(File.dirname(__FILE__), "..", "config", "test-credentials.rb"))

class TestItems < Test::Unit::TestCase
  @@item_title = "eBay4R Test Case Item #{Time.new.to_i}" ;
  @@item_descr = 'eBay API for Ruby @ http://ebay4r.rubyforge.org/ ';

  @@eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)
  @@eBay.debug = true

  def test_add_item
    shipping_options = {
        :ShippingType => "Flat",
        :ShippingServiceOptions => EBay.ShippingServiceOptions({
          :ShippingService         => "UPSGround",
          :ShippingServicePriority => 1,
          :FreeShipping          => true
        })
      }
    return_policy_options = {
      :Description => "no returns",
      :ReturnsAcceptedOption => "ReturnsNotAccepted"
    }

    brand = EBay::BrandMPN({:brand => "Does not apply", :mPN => "Does not apply"})

    product_listing_details = EBay::ProductListingDetails({
      :EAN => "Does not apply",
      :ISBN => "Does not apply",
      :UPC => "Does not apply",
      :BrandMPN => brand
    })

    specifics = [EBay::NameValueList({:Name =>"Brand", :Value =>"Does not Apply"}),
                 EBay::NameValueList({:Name =>"UPC", :Value =>"Does not Apply"})]

    resp = @@eBay.AddItem(:Item => EBay.Item(:PrimaryCategory => EBay.Category(:CategoryID => 171228),
                                            :Title => @@item_title,
                                            :Description => @@item_descr,
                                            :Location => 'RubyForge',
                                            :StartPrice => '12.0',
                                            :Quantity => 1,
                                            :ListingDuration => "Days_7",
                                            :Country => "US",
                                            :Currency => "USD",
                                            :ConditionID => 1000,
                                            :DispatchTimeMax => 1,
                                            :ShippingDetails => EBay.ShippingDetails(shipping_options),
                                            :ReturnPolicy => EBay::ReturnPolicy(return_policy_options),
                                            :PaymentMethods => ["VisaMC"],
                                            :ItemSpecifics => specifics
                                            )
                        )

    assert_respond_to(resp, "timestamp")
    assert_respond_to(resp, "ack")
    assert_equal(resp.ack, "Success")

    assert_respond_to(resp, "itemID")
    assert_not_nil(resp.itemID)

    @@item_id = resp.itemID

    assert_respond_to(resp, "fees")
  end

  def test_add_item_no_params
    assert_raise(EBay::Error::ApplicationError) { @@eBay.AddItem() }
  end

  def test_get_item
    resp = @@eBay.GetItem(:DetailLevel => 'ReturnAll', :ItemID => @@item_id)

    assert_respond_to(resp, "timestamp")
    assert_respond_to(resp, "ack")
    assert_equal(resp.ack, "Success")

    assert_equal(resp.item.title, @@item_title)
    assert_equal(resp.item.description, @@item_descr)
  end

end
