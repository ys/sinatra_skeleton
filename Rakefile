require './server'
require 'sinatra/activerecord/rake'
require 'rspec/core'
require 'rspec/core/rake_task'

task :default => :spec

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(:spec)

task :environment do
  Sinatra::Application.environment = ENV['RACK_ENV']
end

task :routes do
  endpoints = {}

  if Sinatra::Application.descendants.any?
    #Classic application structure
    applications = Sinatra::Application.descendants
    applications.each do |app|
      endpoints[app.to_s.downcase.to_sym] = app.routes
    end
  elsif Sinatra::Base.descendants.any?
    #Modular application structure
    applications = Sinatra::Base.descendants
    applications.each do |app|
      endpoints[app.to_s.downcase.to_sym] = app.routes
    end
  else
    abort("Cannot find any defined routes.....")
  end

  endpoints.each do |app_name,routes|
    puts "Application: #{app_name}\n"
    routes.each do |verb,handlers|
      puts "\n#{verb}:\n"
      handlers.each do |handler|
        puts handler[0].source.to_s
      end
    end
  end
end
