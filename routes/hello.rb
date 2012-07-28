require 'rabl'
class App
  get 'favicon.ico' do end

  # Get a greeting
  # @param <name> The person name
  # @response
  #   Hello name
  #
  get '/:name' do
    @person = Person.new(name: params[:name])
    slim :'hello/person'
  end
end
