class UsersController < ApplicationController 
  
  get "/users" do 
    if !logged_in?
      redirect to '/'
    else 
      redirect to '/company_interests'
    end 
  end 

  get "/users/signup" do
    if !logged_in?
      erb :'users/new'
    else 
      redirect to '/company_interests'
    end 
  end
  
  post "/users/signup" do
    user = User.create(params)
    if user.username != "" && user.save
      session[:user_id] = user.id
      redirect '/company_interests'
    else 
      redirect to '/users/signup' 
    end
  end

  get "/users/login" do
    if !logged_in?
      erb :"/users/login" 
    else 
      redirect to '/company_interests'
    end 
  end

  post "/users/login" do
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
		  session[:user_id] = user.id 
      redirect '/company_interests'
    else 
      redirect to '/users/signup'
    end
  end
  
  get "/users/logout" do 
    if logged_in? 
      session.clear
      redirect to '/users/login'
    else
      redirect to '/'
    end 
  end
  
  get '/users/:id' do
    if !logged_in?
      redirect to "/users/login"
    else 
      redirect "/company_interests"
    end 
  end
  
end 
