#!/usr/bin/env ruby
# $Id: revise_item.rb,v 1.1 2006/01/07 02:25:31 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

item = EBay.Item(:ItemID => '4504390345', :Location => 'Brave New World', :Title => 'My new title')

resp = eBay.ReviseItem(:DetailLevel => 'ReturnAll', :Item => item, 
                       :ModifiedFields => [ {:Field => 'Item.Location', :ModifyType => 'Modify'},
                                            {:Field => 'Item.Title',    :ModifyType => 'Modify'} ])
                                            # Note :Field is case insensitive, so 'item.title' would work also

puts "ItemID: "   + resp.itemID
