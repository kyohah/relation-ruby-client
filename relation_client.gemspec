# -*- encoding: utf-8 -*-

=begin
#Re:lation API

#https://developer.ingage.jp/

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "relation_client/version"

Gem::Specification.new do |s|
  s.name        = "relation_client"
  s.version     = RelationClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kyohah"]
  s.email       = [""]
  s.homepage    = "https://github.com/kyohah/relation-ruby-client"
  s.summary     = "Re:lation API Ruby Gem"
  s.description = "https://developer.ingage.jp/"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
