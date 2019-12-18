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


    get "/" do
      if is_logged_in?
        redirect '/cupcakes'
      else
        erb :index
      end
    end

    helpers do

      def current_user
        @user = User.find_by_id(session[:user_id])
      end

      def is_logged_in?
        !!current_user
      end

      def redirect_if_not_logged_in
        if !is_logged_in?
          flash[:message] = "Please log in to view that page."
          redirect "/"
        end
      end

      def redirect_if_not_creator(cupcake)
        if current_user.id != cupcake.user_id
          flash[:message] = "get your cupcakes here"
          redirect "/cupcakes/#{cupcake.id}"
        end

      end

    end

  end
