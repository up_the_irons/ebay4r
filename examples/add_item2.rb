#!/usr/bin/env ruby
# $Id: add_item.rb,v 1.11 2006/01/13 09:56:29 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of AddItem call
#

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Added some shipping options

resp = eBay.AddItem(:Item => EBay.Item({ :PrimaryCategory => EBay.Category(:CategoryID => 57882),
                      :Title => 'Mouse Pad',
                      :Description => 'A really cool mouse pad, you know you want it...',
                      :Location => 'USA',
                      :StartPrice => '0.50',
                      :BuyItNowPrice => '9.50',
                      :Quantity => 1,
                      :ShippingDetails => EBay.ShippingDetails( 
                        :ShippingServiceOptions => [
                          EBay.ShippingServiceOptions( 
                            :ShippingService => ShippingServiceCodeType::USPSPriority,
                            :ShippingServiceCost => '0.0',
                            :ShippingServiceAdditionalCost => '0.0'),
                          EBay.ShippingServiceOptions( 
                            :ShippingService => ShippingServiceCodeType::USPSPriorityFlatRateBox,
                            :ShippingServiceCost => '7.0',
                            :ShippingServiceAdditionalCost => '0.0')]),
                      :ShippingTermsInDescription => false,
                      :ShipToLocations => "US",
                      :ShipToLocations => "CA",
                      :ListingDuration => "Days_7",
                      :Country => "US",
                      :Currency => "USD",
                      :PayPalEmailAddress => "foobar@example.com",
                      :PaymentMethods => ["VisaMC", "PayPal"] }))


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
