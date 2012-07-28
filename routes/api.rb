class App
  get '/api/:name' do
    @person = Person.new(name: params[:name])
    rabl :'hello/person'
  end
end
