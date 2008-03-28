#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetNotificationsUsage call 
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

# Fill this in with a real item number to get more info about notifications
item_no = '110029878327'

if !item_no.empty?
  resp = eBay.GetNotificationsUsage(:ItemID => item_no)

  resp.notificationDetailsArray.each do |notif|
    puts "Delivery Status: " + notif.deliveryStatus
    puts "Delivery Time: " + notif.deliveryTime if notif.respond_to? 'deliveryTime'
    puts "Delivery URL: " + notif.deliveryURL
    puts "Error Message: " + notif.errorMessage
    puts "Expiration Time: " + notif.expirationTime
    puts "Next Retry Time: " + notif.nextRetryTime
    puts "Retries: " + notif.retries if notif.respond_to?('retries') && notif.retries
    # puts "Type: " + notif.type  # Mmmm... "type" is already a method of Object
  end if resp.notificationDetailsArray.respond_to? 'notificationDetails'
end

resp = eBay.GetNotificationsUsage

ns = resp.notificationStatistics

puts "Current Counters: "
puts "  Delivered: " + ns.deliveredCount.to_s
puts "  Errors: " + ns.errorCount.to_s
puts "  Expired: " + ns.expiredCount.to_s
puts "  Queued New: " + ns.queuedNewCount.to_s
puts "  Queued Pending: " + ns.queuedPendingCount.to_s

# More fields are present, see eBay's SOAP API Guide
#
# If you add on to this example with more fields, please send it to
# gdolley@ucla.edu so I can include it with the next release :)
