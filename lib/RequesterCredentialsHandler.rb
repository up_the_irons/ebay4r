#--
#
# $Id: RequesterCredentialsHandler.rb,v 1.3 2005/12/21 02:12:20 garrydolley Exp $
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

require 'soap/header/simplehandler' 

module EBay

  class RequesterCredentialsHandler < SOAP::Header::SimpleHandler 
    HeaderName    = XSD::QName.new('urn:ebay:apis:eBLBaseComponents', 'RequesterCredentials') 
    Credentials   = XSD::QName.new('urn:ebay:apis:eBLBaseComponents', 'Credentials') 

    EbayAuthToken = XSD::QName.new(nil, 'n1:eBayAuthToken')
    DevId         = XSD::QName.new(nil, 'n1:DevId')
    AppId         = XSD::QName.new(nil, 'n1:AppId')
    AuthCert      = XSD::QName.new(nil, 'n1:AuthCert')

    def initialize(eBayAuthToken, devId, appId, authCert) 
      super(HeaderName) 
      @token, @devId, @appId, @cert = eBayAuthToken, devId, appId, authCert
    end 

    def on_simple_outbound
      creds = { Credentials => { DevId => @devId, AppId => @appId, AuthCert => @cert } }
      
      # In a handful of calls mostly related to generating tokens in 
      # multiple-user applications (ex. GetSessionID), you don't want to pass
      # in a token (or an empty eBayAuthToken node) 'cuz you're still in the 
      # process of getting one.
      creds.merge!({ EbayAuthToken => @token }) unless @token.nil? || @token.empty?
      
      return creds
    end 
  end

end
