require 'soap/header/simplehandler' 

module EBay

  class RequesterCredentialsHandler < SOAP::Header::SimpleHandler 
    HeaderName    = XSD::QName.new('urn:ebay:apis:eBLBaseComponents', 'RequesterCredentials') 
    Credentials   = XSD::QName.new('urn:ebay:apis:eBLBaseComponents', 'Credentials') 

    EbayAuthToken = XSD::QName.new(nil, 'eBayAuthToken')
    DevId         = XSD::QName.new(nil, 'DevId')
    AppId         = XSD::QName.new(nil, 'AppId')
    AuthCert      = XSD::QName.new(nil, 'AuthCert')

    def initialize(eBayAuthToken, devId, appId, authCert) 
      super(HeaderName) 
      @token, @devId, @appId, @cert = eBayAuthToken, devId, appId, authCert
    end 

    def on_simple_outbound 
      { EbayAuthToken => @token, 
        Credentials => { DevId => @devId, AppId => @appId, AuthCert => @cert } }
    end 
  end

end
