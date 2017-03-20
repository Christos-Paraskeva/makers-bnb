require 'sinatra'

class MakersBNB < Sinatra::Base

get '/' do
  'Welcome!'
end

run! if app_file == $0
end
