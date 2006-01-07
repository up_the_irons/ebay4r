#!/usr/bin/env ruby
# $Id: get_item.rb,v 1.6 2006/01/07 01:29:55 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Replace ItemID with some item you know exists
resp = eBay.GetItem(:DetailLevel => 'ReturnAll', :ItemID => '4504390345', :IncludeWatchCount => 'true')

puts "AutoPay: "  + resp.item.autoPay
puts "Country: "  + resp.item.country
puts "ItemID: "   + resp.item.itemID
puts "Descr: "    + resp.item.description
puts "Location: " + resp.item.location

puts "Ship To Locations:"
resp.item.shipToLocations.each { |loc| puts loc }

# Many more fields are present, see eBay's SOAP API Guide or GetItemResponseType class in "../lib/eBay.rb"

