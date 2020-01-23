require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end



  get '/sessions/logout' do
    session.clear
    redirect '/'
  end

  end
  #Add <label>s to the inputs of your sign up form
  #Redirect the user once they've successfully signed up
  #Add a logout route that clears the user's session
