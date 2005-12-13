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

#:main: README

require 'eBayDriver.rb'
require 'RequesterCredentialsHandler.rb'

module EBay

# This is the main class of the eBay4R library.  Start by instantiating this class (see below)
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
    call_name = EBay::fix_case_up(m.id2name) # upper first character

    @callName = call_name
    args_hash = args[0]

    if valid_call?(call_name)
      service = makeService
      request = eval("#{call_name}RequestType.new")

      request.version = @ver
 
      EBay::assign_args(request, args_hash)
      
      #if args_hash
      #  args_hash.each do |key, val|
      #    key = EBay::fix_case_down(key.to_s) # lower first character

      #    if request.respond_to? "#{key}="
      #      s = "request.#{key} = val"
      #      eval(s) 
      #    end
      #  end
      #end
      
      EBay::fix_case_down(call_name)
      eval "service.#{call_name}(request)"
    else
      raise(UnknownAPICall, "Unknown API Call: #{call_name}")
    end
  end

  class Error < StandardError; #:nodoc:
  end

  # Raised if a call is made to a method that does not exist in the eBay SOAP API
  class UnknownAPICall < Error; end

  # Raised if an attempt is made to instantiate a type that does not exist in the eBay SOAP API
  class UnknownType < Error; end

  private
  def requestURL
    "#{@endpoint_url}?callname=#{@callName}&siteid=#{@site_id}&appid=#{@app_id}&version=#{@ver}&routing=default"
  end

  def makeService
    service = EBayAPIInterface.new(requestURL())
    service.headerhandler << @header_handler
    service.wiredump_dev = STDOUT if @debug
    
    return service
  end

  def valid_call?(call)
    call = EBay::fix_case_down(String.new(call)) # lower first character
    EBayAPIInterface::Methods.each { |defs| return true if defs[1] == call }

    return false
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
      raise(API::UnknownType, "Invalid Type: #{type}")
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
