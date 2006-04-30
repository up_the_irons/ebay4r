#!/usr/bin/env ruby
# $Id: get_category_features.rb,v 1.1 2006/04/30 07:37:52 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'eBayAPI'

#
# Example of GetCategoryFeatures call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

# Call "GetCategoryFeatures"
resp = eBay.GetCategoryFeatures(:DetailLevel => 'ReturnAll', # Return all available info
                                :CategoryID  => '1',
                                :FeatureID   => 'ListingDurations') # Tell us about listing durations

# Report results

durationHash = {}

[resp.featureDefinitions.listingDurations.listingDuration].flatten.each do |ld|
  durationHash[ld.xmlattr_durationSetID] = ld.duration
end

puts "Site wide defaults for listing durations given listing type:\n\n"

[resp.siteDefaults.listingDuration].flatten.each do |duration|
  puts duration.xmlattr_type # This is an example of how we read an XML attribute, just prepend "xmlattr_" to the name
  [durationHash[duration]].flatten.each do |c|
    puts "  " + c
  end
end
