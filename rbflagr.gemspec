# -*- encoding: utf-8 -*-
#
=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "rbflagr/version"

Gem::Specification.new do |s|
  s.name        = "rbflagr"
  s.version     = Flagr::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "https://github.com/checkr/rbflagr"
  s.summary     = "Flagr ruby client gem"
  s.description = "rbflagr is client that can talk to flagr service. Flagr is a feature flagging, A/B testing and dynamic configuration microservice"
  s.license     = "Apache 2.0"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
