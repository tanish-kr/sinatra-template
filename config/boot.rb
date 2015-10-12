# coding: utf-8
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler'
require_relative 'application'

Bundler.require(:default, ENV['RACK_ENV'].intern)

# dependencies load
ActiveSupport::Dependencies.autoload_paths << File.join(File.expand_path('../../', __FILE__), 'app')
ActiveSupport::Dependencies.autoload_paths << File.join(File.expand_path('../../', __FILE__), 'app', '**')

# database setting
ActiveRecord::Base.configurations = YAML.load(ERB.new(IO.read('config/database.yml')).result)
ActiveRecord::Base.establish_connection(ENV['RACK_ENV'].intern)
