require 'eBayDriver.rb'
require 'RequesterCredentialsHandler.rb'

module EBay

class API
  attr_writer :debug

  # Creates an eBay caller object.
  #
  # You will need this object to make any API calls to eBay's servers, so instantiation is required
  # before you can use any other part of this library.
  #
  # :call-seq:
  #   new(<em>auth_token, dev_id, app_id, cert_id</em>)
  #   new(<em>auth_token, dev_id, app_id, cert_id, :sandbox => true</em>)
  #
  # The first four (4) arguments are required (all String's):
  #
  #   auth_token = Your eBay Authentication Token
  #   dev_id     = Your eBay Developer's ID
  #   app_id     = Your eBay Application ID
  #   cert_id    = Your eBay Certificate ID
  #
  # The optional fifth argument is a single-element hash (named parameter, if you will) with the
  # key "sandbox", for example:
  #
  # eBay = EBay::API.new("my_auth_tok", "dev_id", "cert_id", "app_id", :sandbox => true)
  #
  # creates a caller that works with the eBay "sandbox" environment.
  #
  # Omit the fifth argument to work with the eBay "live" environment, or set the value to 'false'
  #
  def initialize(auth_token, dev_id, app_id, cert_id, opt = {})
    @ver = 443
    @debug = false
    @app_id = app_id
    @header_handler = RequesterCredentialsHandler.new(auth_token, dev_id, app_id, cert_id)

    shost, @site_id = opt[:sandbox] ? ["sandbox.", '0'] : ["", '1']

    @endpoint_url = "https://api.#{shost}ebay.com/wsapi"
  end

  def method_missing(m, *args) #:nodoc:
    call_name = m.id2name
    call_name[0] = call_name[0,1].upcase # upper first character

    @callName = call_name
    args_hash = args[0]

    if valid_call?(call_name)
      service = makeService
      request = eval("#{call_name}RequestType.new")

      request.version = @ver
 
      if args_hash
        args_hash.each do |key, val|
          key = key.to_s
          key[0] = key[0,1].downcase # lower first character

          if request.respond_to? "#{key}="
            s = "request.#{key} = \"#{val}\""
            eval(s) 
          end
        end
      end
      
      lcall!(call_name)
      eval "service.#{call_name}(request)"
    end
  end

  private
  def requestURL
    "#{@endpoint_url}?callname=#{@callName}&siteid=#{@site_id}&appid=#{@app_id}&version=#{@version}&routing=default"
  end

  def makeService
    service = EBayAPIInterface.new(requestURL())
    service.headerhandler << @header_handler
    service.wiredump_dev = STDOUT if @debug
    
    return service
  end

  def valid_call?(call)
    call = String.new(call)
    call[0] = call[0,1].downcase # lower first character
    EBayAPIInterface::Methods.each { |defs| return true if defs[1] == call }

    return false
  end

  def lcall!(call)
    call[0] = call[0,1].downcase
    call
  end
end

end
