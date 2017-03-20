ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'database_setup'

class MakersBNB < Sinatra::Base

get '/' do
  'Welcome!'
end

get '/property' do
  erb :'links/property'
end

post '/property' do
  redirect '/property'
end

get '/property/new' do
  erb :'links/listing_property'
end

run! if app_file == $0
end
