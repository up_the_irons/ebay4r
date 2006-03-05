#!/usr/bin/env ruby
# $Id: get_notification_preferences.rb,v 1.1 2006/03/05 07:49:54 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetNotificationPreferences call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

resp = eBay.GetNotificationPreferences

