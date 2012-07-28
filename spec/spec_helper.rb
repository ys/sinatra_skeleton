ENV['RACK_ENV'] = 'test'
# Load the Sinatra app
require File.join( File.dirname(__FILE__), '..', 'server' )

require 'rspec'
require 'rack/test'
require 'factory_girl'
require 'shoulda'
require 'faker'
require 'database_cleaner'
require 'json_spec'


Dir[File.dirname(__FILE__)+"/factories/*.rb"].each {|file| require file }
set :environment, :test

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include FactoryGirl::Syntax::Methods
  conf.include JsonSpec::Helpers

  conf.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
  end

  conf.before(:each) do
    DatabaseCleaner.start
  end

  conf.after(:each) do
    DatabaseCleaner.clean
  end
end

def last_json
  last_response.body
end

def app
  App
end

