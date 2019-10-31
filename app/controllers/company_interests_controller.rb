class CompanyInterestsController < ApplicationController 
  
  get '/company_interests' do 
    # can def error message in ApplicationController and call on that method here, which would then redirect user if not logged in
    
    # Put above error message method here
    @companies = CompanyInterest.all 
    erb :"/company_interests/index"
  end 
  
end 

# Company_Interests should be able to:
  # have CRUD actions applied by their User
  # passwords are salted and hashed 
  # user should be authenticated as part of all CRUD actions (creating, reading, editing, deleting, etc.)
    # CRUD actions can only be carried out on User's content 