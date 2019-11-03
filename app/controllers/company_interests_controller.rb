class CompanyInterestsController < ApplicationController 
  
  get '/company_interests' do 
    redirect_if_not_logged_in
    @user = current_user 
    erb :"/company_interests/index"
  end 
  
  get "/company_interests/new" do 
    redirect_if_not_logged_in
    erb :"/company_interests/new"
  end 
  
  post "/company_interests" do 
    redirect_if_not_logged_in
    new_company = CompanyInterest.create(params[:company_interest])
    new_company.user = current_user 
    new_company.save
    redirect to "/company_interests/#{new_company.id}"
  end 
  
  get "/company_interests/:id/edit" do 
    redirect_if_not_logged_in
    @company = CompanyInterest.find_by_id(params[:id])
    
     unless !(@company == nil)
      redirect "/company_interests"
     end
     
      if @company.user == current_user
         erb :'/company_interests/edit'
      else 
        redirect to "/company_interests"
      end 
  end 
  
  get "/company_interests/:id" do 
    redirect_if_not_logged_in
    @company = CompanyInterest.find_by_id(params[:id])
    
     unless !(@company == nil)
      redirect "/company_interests"
     end 
     
      if @company.user == current_user
        erb :"/company_interests/show"
      else 
        redirect to "/company_interests"
      end 
  end 
  
  patch "/company_interests/:id" do 
    redirect_if_not_logged_in
    @company = CompanyInterest.find(params[:id])
    
     if @company.user == current_user
        @company.name = params[:company_interest][:name]
        @company.description = params[:company_interest][:description]
        @company.applied = params[:company_interest][:applied]
        @company.save
        redirect to "/company_interests/#{@company.id}"
     else 
        redirect "/company_interests"
     end 
  end 
  
  delete '/company_interests/:id' do
    @company = CompanyInterest.find_by_id(params[:id])
     if @company.user == current_user
        @company.delete
        redirect "/company_interests"
     else
         redirect "/company_interests"
     end
  end
  
end 
    