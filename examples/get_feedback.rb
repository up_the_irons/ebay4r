#!/usr/bin/env ruby
# $Id: get_feedback.rb,v 1.2 2005/12/27 01:17:01 garrydolley Exp $

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'eBayAPI'

#
# Example of GetFeedback call
#

# Put your credentials in this file
load('myCredentials.rb')

# Create new eBay caller object.  Omit last argument to use live platform.
eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true) 

resp = eBay.GetFeedback # No arguments = current user, otherwise pass :UserID

puts "Aggregate Feedback Score: #{resp.feedbackScore}"
puts "Neutral Comment Count from Suspended Users: #{resp.feedbackSummary.neutralCommentCountFromSuspendedUsers}"
puts "Unique Positive Feedbacks: #{resp.feedbackSummary.uniquePositiveFeedbackCount}"
puts "Unique Negative Feedbacks: #{resp.feedbackSummary.uniqueNegativeFeedbackCount}"

puts "Bid Retractions:"
resp.feedbackSummary.bidRetractionFeedbackPeriodArray.feedbackPeriod.each do |fb|
  puts "  Last #{fb.periodInDays} Days: #{fb.count}"
end

puts "Positive Feedback:"
resp.feedbackSummary.positiveFeedbackPeriodArray.feedbackPeriod.each do |fb|
  puts "  Last #{fb.periodInDays} Days: #{fb.count}"
end

puts "Negative Feedback:"
resp.feedbackSummary.negativeFeedbackPeriodArray.feedbackPeriod.each do |fb|
  puts "  Last #{fb.periodInDays} Days: #{fb.count}"
end

puts "Neutral Feedback:"
resp.feedbackSummary.neutralFeedbackPeriodArray.feedbackPeriod.each do |fb|
  puts "  Last #{fb.periodInDays} Days: #{fb.count}"
end

puts "Total Feedback:"
resp.feedbackSummary.totalFeedbackPeriodArray.feedbackPeriod.each do |fb|
  puts "  Last #{fb.periodInDays} Days: #{fb.count}"
end
