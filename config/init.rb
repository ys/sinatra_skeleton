require 'sinatra/activerecord'
require 'pg'
require 'rabl'
require 'slim'
require 'active_support/core_ext'
require 'active_support/inflector'
require 'rabl/builder'

RACK_ENV ||= ENV["RACK_ENV"] || "development"

Dir[ File.join( File.dirname(__FILE__), '*.rb') ].each { |f| require f }

