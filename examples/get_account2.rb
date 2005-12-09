#!/usr/bin/env ruby

begin
  require 'rubygems'
  require_gem 'ebay'
rescue LoadError
  require 'eBayAPI'
end

#
# Example of GetAccount call requesting a specific monthly statement
#

load('myCredentials.rb')

eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

resp = eBay.GetAccount(:AccountHistorySelection => 'SpecifiedInvoice', :InvoiceDate => '2005-11-01')

puts "AccountID: " + resp.accountID
puts "Account Summary -- Invoice Balance: " + resp.accountSummary.invoiceBalance

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
