require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  post '/sessions' do

      redirect '/users/welcome'
    end

    get '/sessions/logout' do

      redirect '/'
    end

  end
