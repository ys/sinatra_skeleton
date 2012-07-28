class App

  register Sinatra::Croon

  get 'favicon.ico' do

  end

  get '/:name' do
    @person = Person.new(name: params[:name])
    render :rabl,  :"hello/person", format: :json
  end
end
