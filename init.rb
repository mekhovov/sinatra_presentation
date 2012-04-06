require 'rubygems'
require 'sinatra'
require 'haml'

set :public, File.dirname(__FILE__)
set :haml, {:format => :html5, :attr_wrapper => '"'}

get '/' do
  File.read('index.html')
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

