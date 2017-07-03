require 'rubygems'
require 'sinatra'
require 'haml'

set :public_folder, File.dirname(__FILE__)
set :haml, {:format => :html5, :attr_wrapper => '"'}

get '/' do
  File.read File.join(settings.public_folder, 'index.html')
end

get '/qa' do
  haml :qa, :layout => :qa_layout
end

get '/slide80' do
  redirect '/qa'
end

get '/:slide' do
  File.read('index.html')
end
