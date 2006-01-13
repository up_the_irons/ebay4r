# $Id: ebay4r.gemspec,v 1.6 2006/01/13 10:12:19 garrydolley Exp $

require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name     = "ebay"
  s.version  = "0.5.2"
  s.author   = "Garry Dolley"
  s.email    = "gdolley@ucla.edu"
  s.homepage = "http://ebay4r.rubyforge.org"
  s.platform = Gem::Platform::RUBY
  s.summary  = "eBay4R is a Ruby wrapper for eBay's Web Services SOAP API. Emphasis is on ease of use and small footprint."

  candidates = Dir.glob("{examples,lib,test}/**/*") + Dir.glob("./**/.document")
  s.files    = candidates.delete_if do |item|
                 item.include?("CVS") || item.include?("rdoc")
               end

  s.require_path     = "lib"
  s.autorequire      = "eBayAPI"
  s.has_rdoc         = true
  s.extra_rdoc_files = ["README"]
end

if $0 == __FILE__
  Gem::manage_gems
  Gem::Builder.new(spec).build
end
