ENV['RACK_ENV'] ||= 'development'
$LOAD_PATH.push(File.dirname(__FILE__))
require './config/routes'
require 'rack/protection'
$stdout.sync = true
run Routes.new
