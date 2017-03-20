ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'database_setup'
require_relative 'models/user'

class MakersBNB < Sinatra::Base
  enable :sessions

get '/' do
  'Welcome!'
  redirect '/log_in'
end

get '/log_in' do
  erb :log_in
end

get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  user = User.create(name:      params[:Name],
                     email:     params[:Email],
                     password:  params[:Password])
  session['user'] = user
  redirect to('/property')
end

get '/property' do
  'Welcome ' + session['user'].name
end

run! if app_file == $0

end
