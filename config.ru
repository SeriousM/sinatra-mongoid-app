require 'rubygems'
require 'bundler'

Bundler.require

require './app'

use Rack::Config do |env|
  puts env
end

run App