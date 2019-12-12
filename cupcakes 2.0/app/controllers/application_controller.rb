require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/" do
    if is_logged_in?
      redirect '/cupcakes'
    else
      erb :welcome
    end
  end


end
