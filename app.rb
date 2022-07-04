require 'sinatra'
require 'sinatra/reloader' if development?

get '/image' do 
	erb :image
end

get '/:name?' do |name|
	erb :home , :locals => {:name => name}
end

