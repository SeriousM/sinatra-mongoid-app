require 'rubygems'
require 'sinatra'
require "sinatra/base"
require "sinatra/reloader" if development?
require 'mongo'
require 'mongoid'
require 'better_errors'
require 'magiconf'
require 'erb'

require_relative 'config'
require_relative 'models/counter'

class App < Sinatra::Base
  get '/' do
  	erb :index
  end
end