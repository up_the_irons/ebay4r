#!/usr/bin/env ruby

# $Id: hello_world.rb,v 1.4 2005/12/21 02:15:41 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'eBayAPI'

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
