#!/usr/bin/env ruby

#--
#
# Copyright (c) 2005 Garry C. Dolley
#
# This file is part of eBay4R.
#
# eBay4R is free software; you can redistribute it and/or modify it under the
# terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later 
# version.
#
# eBay4R is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
# 
# You should have received a copy of the GNU General Public License along with
# eBay4R; if not, write to the Free Software Foundation, Inc., 51 Franklin
# Street, Fifth Floor, Boston, MA  02110-1301, USA
#
#++

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'test/unit'
require 'eBayAPI'

# This file must be in the current directory your $RUBYLIB environment var.
load('myCredentials.rb')

$eBay = EBay::API.new($authToken, $devId, $appId, $certId, :sandbox => true)

class TestHelloWorld < Test::Unit::TestCase
  def test_simplest_call
    resp = $eBay.GeteBayOfficialTime

    assert_respond_to(resp, "timestamp")
    assert_respond_to(resp, "ack")
    assert_equal(resp.ack, "Success")

    assert(resp.timestamp != "")
  end
end
