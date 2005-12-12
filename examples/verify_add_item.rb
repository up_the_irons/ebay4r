#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of VerifyAddItem call
#

# Note: This example is almost exactly the same as AddItem, with the exception that an item doesn't
# really get added to eBay's database, but all other relevant values are returned.

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# I currently have more work to do in this department, b/c making an item object in the following way
# is tedious and not what I would consider good for a Ruby library.
item = ItemType.new
item.primaryCategory = CategoryType.new
item.primaryCategory.categoryID = '57882'
item.title = 'Mouse Pad'
item.description = 'A really cool mouse pad, you know you want it...'
item.location = 'On Earth'
#item.startPrice = AmountType.new(12.0)
item.startPrice = 12.0
item.quantity = 1
item.listingDuration = "Days_7"
item.country = "US"
item.currency = "USD"
item.paymentMethods[0] = "VisaMC"
item.paymentMethods[1] = "PersonalCheck"

resp = eBay.VerifyAddItem(:Item => item)

puts "You would spend, if you really called AddItem, the following:\n"

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
resp.fees.fee.each do |fee|
  puts fee.name + ": " + fee.fee + " " + fee.fee.xmlattr_currencyID
end

# Notice how the object names reflect the XML element names, and any element
# that is repeated automatically becomes an array, so you can run "each" on
# it.
