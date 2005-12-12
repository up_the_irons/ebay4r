#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

eBay.debug = true

# I currently have more work to do in this department, b/c making an item object in the following way
# is tedious and not what I would consider good for a Ruby library.
#
# Maybe something like:
# item = EBay::Factory.new('Item')
# ???
item = ItemType.new
item.primaryCategory = CategoryType.new
item.primaryCategory.categoryID = '57882'
item.title = 'Mouse Pad'
item.description = 'A really cool mouse pad, you know you want it...',
item.location = 'On Earth'
#item.startPrice = AmountType.initialize
item.startPrice = 12.0
item.quantity = 1
item.listingDuration = "Days_7"
item.country = "US"
item.currency = "USD"
item.paymentMethods[0] = "VisaMC"
item.paymentMethods[1] = "PersonalCheck"

resp = eBay.AddItem(:Item => item)

puts "New Item #" + resp.itemID + " added."
puts "You spent:\n"

resp.fees.fee.each do |fee|
  puts fee.name + ": " + fee.fee
end
