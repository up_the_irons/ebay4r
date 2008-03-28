#!/usr/bin/env ruby
# $Id: set_notification_preferences.rb,v 1.1 2006/03/10 03:52:37 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of SetNotificationPreferences call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

resp = eBay.SetNotificationPreferences(:ApplicationDeliveryPreferences => EBay.ApplicationDeliveryPreferences({
                                         :ApplicationEnable       => 'Enable',
                                         :ApplicationURL          => 'http://www.xyz.com/my_script',
                                         :NotificationPayloadType => 'eBLSchemaSOAP' }),
                                       :UserDeliveryPreferenceArray => [ 
                                         EBay.NotificationEnable( 
                                           :EventEnable => 'Enable',
                                           :EventType   => 'EndOfAuction'),
                                         EBay.NotificationEnable( 
                                           :EventEnable => 'Enable',
                                           :EventType   => 'Feedback')
                                         ]
                                       )
