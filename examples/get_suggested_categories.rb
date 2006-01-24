#!/usr/bin/env ruby
# $Id: get_suggested_categories.rb,v 1.1 2006/01/24 09:53:13 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'eBayAPI'

#
# Example of GetSuggestedCategories call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

# Call "GetSuggestedCategories"
resp = eBay.GetSuggestedCategories(:Query => "stuff")

# Report results

if resp.categoryCount.to_i > 0
  resp.suggestedCategoryArray.suggestedCategory.each do |cat|
    puts "  Category ID   : " + cat.category.categoryID
    puts "  Category Name : " + cat.category.categoryName + " (" + cat.percentItemFound + "%)"
    puts ""
  end
else
  puts "No suggested categories found."
end
