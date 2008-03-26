#!/usr/bin/env ruby
# $Id: get_account2.rb,v 1.5 2005/12/27 01:17:01 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetAccount call requesting a specific monthly statement
#

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

resp = eBay.GetAccount(:AccountHistorySelection => 'SpecifiedInvoice', :InvoiceDate => '2008-03-01')

puts "AccountID: " + resp.accountID
puts "Account Summary -- Invoice Balance: " + resp.accountSummary.invoiceBalance

# Not all statements will have an <AccountState>, so we only print it if present
puts "Account Summary -- Account State: " + resp.accountSummary.accountState if resp.accountSummary.respond_to?(:accountState)

# Some statements may not have any entries in them (no sales that month?), so
# we must test to make sure "accountEntries" exists before we traverse it.
if resp.respond_to?(:accountEntries)
  resp.accountEntries.each do |entry|
    puts "Account Entries -- Description: " + entry.description
  end
end

# Many more fields may be present, see eBay's SOAP API Guide or GetAccountResponseType class in "../lib/eBay.rb"
