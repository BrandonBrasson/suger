require './config/environment'

class UserController < ApplicationController

get '/login' do
erb :login
end

get '/signup' do
erb :signup
end

post "/login" do
user = User.find_by(username: params[:username])
if user && user.authenticate(params[:password])
session[:user_id] = user.id
redirect "/users/#{user.id}"
else
  redirect '/login'
 end
end

get "/users/:id" do
 @user = User.find_by(id: params[:id])
  erb :show
end


  get '/signup' do
   user = User.find_by(username: params[:username])
if user && user.authenticate(params[:password])
      @user = username
      redirect "/login"
    else
      erb :signup
    end
  end

post '/signup' do
  @user = User.create(params[:user])
    session[:name] = @user.username
    session[:user_id] = @user.id
  end
#Redirect a user to their show page once they've successfully logged in
#I#mplement sign up functionality by creating a new user and adding their `user_id` to the sessions hash
#Implement logout by creating a route that clears the session hash

end
