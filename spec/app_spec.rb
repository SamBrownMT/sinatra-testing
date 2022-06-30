ENV['APP_ENV'] = 'test'

require_relative '../app'
require 'rack/test'

describe 'app' do 
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it 'responds' do 
		get '/'
		expect(last_response).to be_ok
	end

	it 'responds correctly' do 
		get '/'
		expect(last_response.body).to include('Hi')
	end

end