require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper')

describe 'People getting routes' do
  context 'get a greeting' do
    let(:person) { build(:person) }
    context 'api greeting' do
      it 'get the greeting' do
        get "/api/#{person.name}"
        last_response.should be_ok
        last_json.should have_json_path 'name'
      end
    end

    context 'slim greeting' do
      it 'get the greeting' do
        get "/#{person.name}"
        last_response.should be_ok
        last_response.body.should include('Hello')
        last_response.body.should include(person.name)
      end
    end
  end
end
