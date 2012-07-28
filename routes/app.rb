class App < Sinatra::Application
  register Sinatra::Croon
end
# load in all of the other .rb files in this directory
Dir[ File.join( File.dirname(__FILE__), '*.rb') ].each { |f| require f }
