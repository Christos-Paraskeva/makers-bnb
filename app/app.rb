ENV['RACK_ENV'] ||= 'development'

require 'sinatra'
require_relative 'models/user'
require_relative 'models/property'
require_relative 'models/request'
require_relative 'database_setup'
require 'bcrypt'

class MakersBNB < Sinatra::Base
  enable :sessions
  set :session_secret, "here be dragons"


  include BCrypt

  get '/' do
    'Welcome!'
    redirect '/log_in'
  end

  get '/log_in' do
    erb :'user/log_in'
  end

  post '/log_in' do
    session[:user] = User.first(email: params[:email])
    if (session[:user] == nil) || (User.check_password(params[:email], params[:password]))
      raise 'Incorrect Login Details'
    end
    redirect '/property'
  end

  get '/sign_up' do
    erb :'user/sign_up'
  end

  post '/sign_up' do
    password_digest = Password.create(params[:password])
    User.create(name:        params[:name],
                email:       params[:email],
                password_digest:  password_digest)
    user = User.first(email: params[:email])
    session[:user] = user
    redirect to('/property')
  end


post '/property' do
  Property.create(title:            params[:title],
                  description:      params[:description],
                  price_per_night:  params[:price_per_night],
                  location:         params[:location],
                  available_from:   params[:available_from],
                  available_to:     params[:available_to],
                  image_url:        params[:image_url],
                  user_id:          session[:user].id)
  redirect '/property'
end

  get '/property' do
    @property = Property.all
    @user = session[:user]
    erb :'links/property'
  end


  get '/property/new' do
    erb :'links/listing_property'
  end

  post '/log_out' do
    session[:user] = nil
    redirect '/'
  end

  post '/request_booking' do
    session[:property_id] = params[:property_id]
    redirect '/request_booking'
  end

  get '/request_booking' do
    @property = Property.first(id: session[:property_id])
    erb :'requests/new_request'
  end

  post '/submit_request' do
    request = Request.create(start_date:             params[:start_date],
                             end_date:               params[:end_date],
                             confirmation_status:    false,
                             user_id:                session[:user].id,
                             property_id:            session[:property_id])
    session[:request_id] = request.id
    redirect '/submit_request'
  end

  get '/submit_request' do
    @current_request = Request.first(id: session[:request_id])
    erb :'requests/submit_request'
  end

  get '/profile/my_properties' do
    @user = session[:user]
    @user_properties = Property.all(:user_id => @user.id)
    erb :'profile/my_properties'
  end

  run! if app_file == $0

end
