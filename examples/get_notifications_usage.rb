#!/usr/bin/env ruby
# $Id: get_notifications_usage.rb,v 1.1 2006/03/11 03:03:54 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetNotificationsUsage call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

resp = eBay.GetNotificationsUsage

n = resp.notificationStatistics

puts "Current Counters: "
puts "  Delivered: " + n.deliveredCount
puts "  Errors: " + n.errorCount
puts "  Expired: " + n.expiredCount
puts "  Queued New: " + n.queuedNewCount
puts "  Queued Pending: " + n.queuedPendingCount

# More fields are present, see eBay's SOAP API Guide
#
# If you add on to this example with more fields, please send it to
# gdolley@ucla.edu so I can include it with the next release :)
