require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
post '/login' do
    if @user = User.find_by(username: params["username"], password: params["password"])
      session[:user_id] = @user.id
      redirect '/account'
    else
      'You Must <a href="/">Log In</a> to View Your Balance'
    end
  end
  end

  get '/account' do

  end

  get '/logout' do

  end


end

