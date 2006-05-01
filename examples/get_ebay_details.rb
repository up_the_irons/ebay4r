#!/usr/bin/env ruby
# $Id: get_ebay_details.rb,v 1.1 2006/05/01 09:32:17 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'eBayAPI'

#
# Example of GeteBayDetails call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Call "GeteBayDetails"
resp = eBay.GeteBayDetails(:DetailName => ['ShippingLocationDetails', 'ShippingServiceDetails'])

# Report results

if resp.respond_to? 'shippingLocationDetails'
  puts "Seller Ship-To choices:\n\n"

  [resp.shippingLocationDetails].flatten.each do |s|
    puts s.shippingLocation + ": " + s.description
  end

  puts "\n"
end

if resp.respond_to? 'shippingServiceDetails'
  puts "Shipping service codes:\n\n"

  [resp.shippingServiceDetails].flatten.each do |s|
    puts s.shippingService + ": " + s.description + " (" + s.shippingServiceID + ")"
  end
end
