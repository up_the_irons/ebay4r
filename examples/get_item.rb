#!/usr/bin/env ruby

require 'rubygems'
require_gem 'ebay'

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Replace ItemID with some item you know exists
resp = eBay.GetItem(:DetailLevel => 'ReturnAll', :ItemID => '4503432058', :IncludeWatchCount => 'true')

puts "AutoPay: "  + resp.item.autoPay
puts "Country: "  + resp.item.country
puts "ItemID: "   + resp.item.itemID
puts "Descr: "    + resp.item.description
puts "Location: " + resp.item.location

puts "Ship To Locations:"
resp.item.shipToLocations.each { |loc| puts loc }

# Many more fields are present, see eBay's SOAP API Guide or GetItemResponseType class in "../lib/eBay.rb"
