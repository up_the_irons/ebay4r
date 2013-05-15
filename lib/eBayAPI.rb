#--
# $Id: eBayAPI.rb,v 1.31 2006/10/10 08:04:52 garrydolley Exp $
#
# Copyright (c) 2005,2006 Garry C. Dolley
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

#:main: README

# Load SOAP4R from gem if it is available, suitable for most users.
#
# The gem will most likely be newer than the Ruby built-in SOAP4R and so we
# want to avoid the error:
#
#   uninitialized constant SOAP::Mapping::EncodedRegistry
#
# If you have a different version of SOAP4R in a directory included in $RUBYLIB
# *and* you want to use that version instead of the gem you also have
# installed, you will most likely have to comment out this block.
#begin
#  require 'rubygems'
#  gem 'soap4r'
#rescue Exception
#  nil
#end

require 'eBayDriver.rb'
require 'RequesterCredentialsHandler.rb'

module EBay

# This is the main class of the eBay4R library.  Start by instantiating this class (see below)
class API
  attr_writer :debug
  attr_writer :debug_io
  
  # Creates an eBay caller object.
  #
  # You will need this object to make any API calls to eBay's servers, so instantiation is required
  # before you can use any other part of this library.
  #
  # :call-seq:
  #   new(auth_token, dev_id, app_id, cert_id)
  #   new(auth_token, dev_id, app_id, cert_id, <em>:sandbox => true</em>)
  #   new(auth_token, dev_id, app_id, cert_id, <em>:sandbox => false, :site_id => 3</em>)
  #
  # The first four (4) arguments are required (all String's):
  #
  #   auth_token = Your eBay Authentication Token
  #   dev_id     = Your eBay Developer's ID
  #   app_id     = Your eBay Application ID
  #   cert_id    = Your eBay Certificate ID
  #
  # The optional fifth argument is a hash where you can pass additional info to refine the caller
  # object.
  # 
  # The key "sandbox", for example:
  #
  #   eBay = EBay::API.new("my_auth_tok", "dev_id", "cert_id", "app_id", :sandbox => true)
  #
  # creates a caller that works with the eBay "sandbox" environment.  By default, the "live"
  # environment is used.
  #
  # You may also pass the key "site_id" to specify calls to be routed to international or 
  # special (e.g. "eBay Motors") sites.
  #
  def initialize(auth_token, dev_id, app_id, cert_id, opt = {})
    @ver = 713
    @debug = false
    @debug_io = STDOUT
    @app_id = app_id
    @header_handler = RequesterCredentialsHandler.new(auth_token, dev_id, app_id, cert_id)

    # Default to 'US' (SiteID = 0) site
    @site_id = opt[:site_id] ? opt[:site_id] : '0' 

    shost = opt[:sandbox] ? "sandbox." : ""

    @endpoint_url = "https://api.#{shost}ebay.com/wsapi"

    XSD::Charset.encoding = 'UTF8' # Thanks to Ray Hildreth
  end

  def method_missing(m, *args) #:nodoc:
    call_name = EBay::fix_case_up(m.id2name) # upper first character

    @callName = call_name.dup
    args_hash = args[0]

    if valid_call?(call_name)
      service = makeService
      request = eval("#{call_name}RequestType.new")

      request.version = @ver
 
      EBay::assign_args(request, args_hash)
      EBay::fix_case_down(call_name)

      verbose_obj_save = $VERBOSE
      $VERBOSE = nil # Suppress "warning: peer certificate won't be verified in this SSL session" 

      resp = eval("service.#{call_name}(request)")

      $VERBOSE = verbose_obj_save # Restore verbosity to previous state

      # Handle eBay Application-level error
      if resp.ack == "Failure"
        err_string = ''

        if resp.errors.is_a?(Array) # Something tells me there is a better way to do this
          resp.errors.each do |err|
            err_string += err.longMessage.chomp(".") + ", "
          end
          err_string = err_string.chop.chop
        else
          err_string = resp.errors.longMessage
        end

        raise(Error::ApplicationError.new(resp), "#{@callName} Call Failed: #{err_string}", caller)
      end

      return resp
    else
      raise(Error::UnknownAPICall, "Unknown API Call: #{call_name}", caller)
    end
  end

  private
  def requestURL
    "#{@endpoint_url}?callname=#{@callName}&siteid=#{@site_id}&appid=#{@app_id}&version=#{@ver}&routing=default"
  end

  def makeService
    service = EBayAPIInterface.new(requestURL())
    service.headerhandler << @header_handler
    service.wiredump_dev = @debug_io if @debug

    # I believe the line below will work after we get the kinks worked out w/ http-access2
    # service.options['protocol.http.ssl_config.verify_mode'] = OpenSSL::SSL::VERIFY_NONE
    
    return service
  end

  def valid_call?(call)
    call = EBay::fix_case_down(String.new(call)) # lower first character
    EBayAPIInterface::Methods.each { |defs| return true if defs[1] == call }

    return false
  end

end

# Exception container
class Error
  #:stopdoc:
  class Error < StandardError; end
  #:startdoc:

  # Raised if a call is made to a method that does not exist in the eBay SOAP API
  class UnknownAPICall < Error; end

  # Raised if an attempt is made to instantiate a type that does not exist in the eBay SOAP API
  class UnknownType < Error; end

  # Raised if a call returns with <Ack>Failure</Ack>.  The _resp_ attribute contains the full failed response.
  class ApplicationError < Error; 
    attr_reader :resp

    def initialize(response)
      @resp = response
    end
  end
end

#:enddoc:

# These class module methods are for creating complex types (e.g. ItemType, CategoryType, etc...)
# and also include some helper functions
class <<self 
  def method_missing(m, *args)
    type_name = fix_case_up(m.id2name)

    begin
      type = "#{type_name}Type"
      type_obj = eval("#{type}.new")
      EBay::assign_args(type_obj, args[0]) # args[0] is a hash of named parameters (like above)

      return type_obj
    rescue NameError
      raise(Error::UnknownType, "Invalid Type: #{type}", caller)
    end
  end

  def assign_args(obj, args_hash)
    if args_hash
      args_hash.each do |key, val|
        key = fix_case_down(key.to_s) # lower first character

        if obj.respond_to? "#{key}="
          eval("obj.#{key} = val")
        end
      end
    end
  end

  def fix_case_up(name)
    name[0] = name[0,1].upcase # upper first character
    name
  end

  def fix_case_down(name)
    name[0] = name[0,1].downcase
    name
  end
end

end
