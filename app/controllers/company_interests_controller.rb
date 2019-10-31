class CompanyInterestsController < ApplicationController 
  
  get '/company_interests' do 
     redirect_if_not_logged_in
     
    @user = current_user 
   
    erb :"/company_interests/index"
  end 
  
  get "/company_interests/new" do 
     redirect_if_not_logged_in
     
    # error_message = params[:error]
    
    erb :"/company_interests/new"
  end 
  
  post "/company_interests" do 
     redirect_if_not_logged_in
     
        # unless CompanyInterest.valid_params?(params)
        #  redirect "/company_interests/new?error=invalid company_interest"
        # end
    
    CompanyInterest.create(params)
    redirect to "/company_interests/#{@company_interest.id}"
  end 
  
  get "/company_interests/:id/edit" do 
    redirect_if_not_logged_in
    
    # @error_message = params[:error]
    
    @company = CompanyInterest.find(params[:id])
     #if you have trouble with this one, or any others with find(params[:id]), try find_by_id(params[:id]) or look at Sinatra Complex Forms Associations for additional info. 
     
    erb :'/company_interests/edit'
  end 
  
  get "/company_interests/:id" do 
    redirect_if_not_logged_in
    
    @company = CompanyInterest.find(params[:id])
    erb :"/company_interests/show"
  end 
  
  patch "/company_interests/:id" do 
    redirect_if_not_logged_in
    
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