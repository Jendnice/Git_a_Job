class UsersController < ApplicationController 
  
  get "/signup" do
    # Will probably want to redirect them to the "users/new" if they're not a current user, or their personal index page ("/company_interests") if they are a current user. 
    # /company_interests would then be defined in the company_interests controller and utilize erb :'/company_interests/index'
    # Could then def error message in ApplicationController and call on that method at the beginning of this route in company_interests controller, which would then redirect user if not logged in
    erb :signup
  end

  post "/signup" do
    user = User.new(:username => params[:username], :password => params[:password])
    if user.username != "" && user.save 
      redirect '/login'
    else 
      # "/failure" below refers to views file for this example. (In Secure Password lab.)
      # Probably best to show error messages another way. See "Video Review: Authentication" and golf example.
      redirect '/failure' 
    end
  end
  
end 

# Users should be able to:
  # sign up, login, logout 
  # CRUD anything that's theirs 
  # password should be salted and hashed when stored in database
  # user should be authenticated as part of all CRUD actions (signing in, creating, reading, editing, deleting, etc.)
    # can only execute CRUD actions on their own content