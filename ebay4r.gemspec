# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'rubygems'

Gem::Specification.new do |s|
  s.name     = "ebay4r"
  s.version  = "2.1"
  s.author   = "Garry Dolley"
  s.email    = "gdolley@ucla.edu"
  s.homepage = "http://ebay4r.rubyforge.org"
  s.platform = Gem::Platform::RUBY
  s.summary  = "eBay4R is a Ruby wrapper for eBay's Web Services SOAP API. Emphasis is on ease of use and small footprint."

  candidates = Dir.glob("{examples,lib,test,contrib}/**/*") + Dir.glob("./**/.document")
  s.files    = candidates.delete_if do |item|
                 item.include?("CVS") || item.include?("rdoc")
               end

  s.require_path     = "lib"
  s.autorequire      = "eBayAPI"
  s.has_rdoc         = true
  s.extra_rdoc_files = ["README"]
  s.add_runtime_dependency "soap4r-ruby1.9", ["= 2.0.5"]
end