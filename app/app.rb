ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'database_setup'

class MakersBNB < Sinatra::Base

get '/' do
  'Welcome!'
end

run! if app_file == $0
end
