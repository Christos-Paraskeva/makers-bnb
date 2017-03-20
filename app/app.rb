ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'database_setup'
require_relative './models/property'

class MakersBNB < Sinatra::Base

get '/' do
  'Welcome!'
end

get '/property' do
  @property = Property.all
  erb :'links/property'
end

post '/property' do
  property = Property.create(name: params[:name])
  redirect '/property'
end

get '/property/new' do
  erb :'links/listing_property'
end

run! if app_file == $0
end
