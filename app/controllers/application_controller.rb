require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "090919_git_a_job_collection"
  end

  get "/" do
    erb :welcome
  end

end
