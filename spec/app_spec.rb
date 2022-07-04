ENV['APP_ENV'] = 'test'

require './app'
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

	it 'responds correctly to Sonic' do 
		get '/Sonic'
		expect(last_response.body).to include('Hi Sonic, how are you today?')
	end

	it 'responds correctly to no name given' do 
		get '/'
		expect(last_response.body).to_not include(',')
	end

	xit 'displays image' do 
		get '/image'
		expect(last_response).to include('img')
	end

end