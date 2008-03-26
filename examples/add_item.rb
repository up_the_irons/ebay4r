#!/usr/bin/env ruby
# $Id: add_item.rb,v 1.11 2006/01/13 09:56:29 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of AddItem call
#

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Shorter way of passing complex types (implied by hashing) than when we did in v0.5.2 and prior
resp = eBay.AddItem(:Item => EBay.Item({ :PrimaryCategory => EBay.Category({ :CategoryID => 57882 }),
                               :Title => 'Mouse Pad',
                               :Description => 'A really cool mouse pad, you know you want it...',
                               :Location => 'On Earth',
                               :StartPrice => '12.0',
                               :Quantity => 1,
                               :ListingDuration => "Days_7",
                               :Country => "US",
                               :Currency => "USD",
                               :PaymentMethods => ["VisaMC", "PersonalCheck"] }))

puts "New Item #" + resp.itemID + " added."
puts "You spent:\n"


# The fees part of the response looks like this:
#
# <Fees>
#   <Fee>
#     <Name>AuctionLengthFee</Name>
#     <Fee currencyID="USD">0.0</Fee>
#   </Fee>
#   <Fee>
#     <Name>BoldFee</Name>
#     <Fee currencyID="USD">0.0</Fee>
#   </Fee>
#   ...
#   <Fee>
#     <Name>InsertionFee</Name>
#     <Fee currencyID="USD">0.6</Fee>
#   </Fee>   
#   ...
# </Fees>
#
# So this is now we traverse it:
resp.fees.each do |fee|
  puts fee.name + ": " + fee.fee + " " + fee.fee.xmlattr_currencyID
end

# Notice how the object names reflect the XML element names, and any element
# that is repeated automatically becomes an array, so you can run "each" on
# it.
