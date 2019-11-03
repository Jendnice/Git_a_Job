require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "090919_git_a_job_collection"
  end

  get "/" do
    if !session[:user_id]
      erb :opening_page
    else 
      redirect to '/company_interests'
    end 
  end
  
  get "/failure" do
    erb :failure  
  end
  
  helpers do
  
    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/failure"
      end
    end
    
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
    
  end

end
