ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'database_setup'
require_relative 'models/user'
require_relative 'models/property'

class MakersBNB < Sinatra::Base
  enable :sessions

get '/' do
  'Welcome!'
  redirect '/log_in'
end

get '/log_in' do
  erb :'user/log_in'
end

post '/log_in' do
  session[:user] = User.first(email: params[:email])
  if (session[:user] == nil) || (session[:user].password != params[:password])
    raise 'Incorrect Login Details'
  end
  redirect '/property'
end

get '/sign_up' do
  erb :'user/sign_up'
end

post '/sign_up' do
  User.create(name:        params[:name],
              email:       params[:email],
              password:    params[:password])
  user = User.first(email:  params[:email])
  session[:user] = user
  redirect to('/property')
end

get '/property' do
  @property = Property.all
  @user = session[:user]
  erb :'links/property'
end

post '/property' do
  puts 'hello'

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
