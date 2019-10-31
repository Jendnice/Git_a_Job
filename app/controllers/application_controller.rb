require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "090919_git_a_job_collection"
  end

  get "/" do
    erb :welcome_placeholder  
  end
  
  helpers do
  
           def redirect_if_not_logged_in
              if !logged_in?
                ## UPDATE REDIRECT BELOW. CURRENTLY PUTS THAT WORDING INTO URL BUT SINATRA DOESN'T KNOW THAT DITTY/PAGE. ##
               redirect "/login?error=You have to be logged in to do that"
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

  # main controller framework 
  # helper methods
  # redirect/error message?
