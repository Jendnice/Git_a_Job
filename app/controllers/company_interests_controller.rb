class CompanyInterestsController < ApplicationController 
  
  get '/company_interests' do 
    # can def error message in ApplicationController and call on that method here, which would then redirect user if not logged in
    
    # Put above redirect method (to error message) here
    @companies = CompanyInterest.all 
    erb :"/company_interests/index"
  end 
  
  get "/company_interests/new" do 
    # add redirect method (to error message) here 
    # error_message = params[:error]
    
    erb :"/company_interests/new"
  end 
  
  post "/company_interests" do 
    ##  add redirect method (to error message) here 
    # unless CompanyInterest.valid_params?(params)
    #  redirect "/company_interests/new?error=invalid company_interest"
    # end
    
    
    # add redirect method (to error message) here 
    CompanyInterest.create(params)
    redirect to "/company_interests/#{@company_interest.id}"
  end 
  
  get "/company_interests/:id/edit" do 
    # add redirect method (to error message) here
    # @error_message = params[:error]
    
    
    @company = CompanyInterest.find(params[:id])
     #if you have trouble with this one, or any others with find(params[:id]), try find_by_id(params[:id]) or look at Sinatra Complex Forms Associations for additional info. 
     
    erb :'/company_interests/edit'
  end 
  
  get "/company_interests/:id" do 
    # add redirect method (to error message) here 
    
    @company = CompanyInterest.find(params[:id])
    erb :"/company_interests/show"
  end 
  
  patch "/company_interests/:id" do 
    # add redirect method (to error message) here 
    
    @company = CompanyInterest.find(params[:id])
        # unless CompanyInterest.valid_params?(params)
        #   redirect "/company_interests/#{@company.id}/edit?error=invalid company interest"
        # end 
    @company.update(params.select{|k| k == "name" || k == "description"})
    redirect to "/company_interests/#{@company.id}"
    # if you have trouble with this one, refer to Sinatra Complex Forms for additional options.
  end 
  
end 

# Company_Interests should be able to:
  # have CRUD actions applied by their User
  # passwords are salted and hashed 
  # user should be authenticated as part of all CRUD actions (creating, reading, editing, deleting, etc.)
    # CRUD actions can only be carried out on User's content 