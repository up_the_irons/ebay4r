#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetAccount call requesting the last monthly statement
#

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

resp = eBay.GetAccount(:AccountHistorySelection => 'LastInvoice')

puts "AccountID: " + resp.accountID
puts "Account Summary -- Account State: " + resp.accountSummary.accountState

# Not all statements will have an <AccountState>, so we only print it if present
puts "Account Summary -- Account State: " + resp.accountSummary.accountState if resp.accountSummary.respond_to?(:accountState)

# Some statements may not have any entries in them (no sales that month?), so
# we must test to make sure "accountEntries" exists before we traverse it.
if resp.respond_to?(:accountEntries)
  resp.accountEntries.accountEntry.each do |entry|
    puts "Account Entries -- Description: " + entry.description
  end
end

# Many more fields may be present, see eBay's SOAP API Guide or GetAccountResponseType class in "../lib/eBay.rb"
