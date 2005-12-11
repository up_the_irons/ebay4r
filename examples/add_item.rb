#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

# ****************************************
# *** THIS EXAMPLE IS NOT YET COMPLETE ***
# ****************************************

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

eBay.debug = true

# I currently have more work to do in this department, b/c making an item object in the following way
# is tedious and not what I would consider good for a Ruby library.
item = ItemType.new
##item.primaryCategory = CategoryType.new
##item.primaryCategory.categoryID = '57882'
item.title = 'Mouse Pad'
item.description = 'A really cool mouse pad, you know you want it...',
item.location = 'On Earth'
#item.startPrice = AmountType.initialize
##item.startPrice = '12.0'
item.quantity = 1

#puts item.startPrice.class

# Maybe something like:
# item = EBay::Factory.new('Item')
# ???

resp = eBay.AddItem(:Item => item)

puts resp.ItemID + "added"
