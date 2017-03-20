ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'database_setup'

class MakersBNB < Sinatra::Base

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

end

run! if app_file == $0
end
