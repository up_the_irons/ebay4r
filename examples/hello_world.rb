#!/usr/bin/env ruby

begin
  require 'rubygems'
  require_gem 'ebay'
rescue LoadError
  require 'eBayAPI'
end

#
# Example of GeteBayOfficialTime call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Call "GetEbayOfficialTime"
resp = eBay.GeteBayOfficialTime

# Report results
puts "Hello, World!"
puts "The eBay time is now: #{resp.timestamp}"

# Wasn't that easy?!
