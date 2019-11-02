class UsersController < ApplicationController 
  
  get "/users" do 
    if !session[:user_id]
      erb :'users/new'
    else 
      redirect to '/users/login'
    end 
  end 

  get "/users/signup" do
    if !session[:user_id]
      erb :'users/new'
    else 
      redirect to '/users/login'
    end 
  end
  
  post "/users/signup" do
    user = User.create(params)
    if user.username != "" && user.save
      session[:user_id] = user.id
      redirect '/company_interests'
    else 
      # Could update redirect to show error message below. (As part of signup form or separate?) See "Video Review: Authentication" and golf example.
      redirect to '/users/signup' 
    end
  end

  get "/users/login" do
    erb :"/users/login" 
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
    if session[:user_id] != nil
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

# Users should be able to:
  # sign up, login, logout 
  # CRUD anything that's theirs 
  # password should be salted and hashed when stored in database
  # user should be authenticated as part of all CRUD actions (signing in, creating, reading, editing, deleting, etc.)
    # can only execute CRUD actions on their own content
    