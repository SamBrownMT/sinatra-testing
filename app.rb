require 'sinatra'

get '/:name?' do |name|
	erb :home , :locals => {:name => name}
end