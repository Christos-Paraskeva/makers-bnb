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
  @user = User.name
  erb :'links/property'
end

post '/property' do
  Property.create(title: params[:title],
                  description: params[:description],
                  price_per_night: params[:price_per_night],
                  location: params[:location],
                  available: params[:available])
  redirect '/property'
end

get '/property/new' do
  erb :'links/listing_property'
end

run! if app_file == $0
end
