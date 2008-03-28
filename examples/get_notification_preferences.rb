#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetNotificationPreferences call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

resp = eBay.GetNotificationPreferences(:PreferenceLevel => 'User')

if resp.respond_to?('userDeliveryPreferenceArray') && resp.userDeliveryPreferenceArray
  resp.userDeliveryPreferenceArray.each do |pref|
    puts "Event Enable: " + pref.eventEnable
    puts "Event Type: " + pref.eventType
  end
end

begin
  resp = eBay.GetNotificationPreferences(:PreferenceLevel => 'Application')
  
  if resp.respond_to?('applicationDeliveryPreferences')
    [resp.applicationDeliveryPreferences].flatten.each do |pref|
      puts "Alert Email: " + pref.alertEmail.to_s if pref.respond_to? 'alertEmail'
      puts "Alert Enable: " + pref.alertEnable if pref.respond_to? 'alertEnable'
      puts "Application Enable: " + pref.applicationEnable if pref.respond_to? 'applicationEnable'
      puts "Application URL: " + pref.applicationURL.to_s if pref.respond_to? 'applicationURL'
      puts "Device Type: " + pref.deviceType if pref.respond_to? 'deviceType'
      puts "Notification Payload: " + pref.notificationPayloadType if pref.respond_to? 'notificationPayloadType'
    end
  end
rescue EBay::Error::ApplicationError => boom
  puts boom.message
end

begin
  resp = eBay.GetNotificationPreferences(:PreferenceLevel => 'Event')
  
  if resp.respond_to?('eventProperty') && resp.eventProperty
    [resp.eventProperty].flatten.each do |e|
      puts "Event Type: " + e.eventType
      puts "Name: " + e.name
      puts "Value: " + e.value
    end
  end
rescue EBay::Error::ApplicationError => boom
  puts boom.message
end

# More fields are present, see eBay's SOAP API Guide
#
# If you add on to this example with more fields, please send it to
# gdolley@ucla.edu so I can include it with the next release :)
