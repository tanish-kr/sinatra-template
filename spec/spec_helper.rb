# coding : utf-8
ENV['RACK_ENV'] = 'test'
require 'simplecov'
require 'rack/test'
require File.expand_path(File.dirname(__FILE__) + '/../routes')

RSpec.configre do |config|

  config.before(:all) do
  end

  config.after(:all) do
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end
