class CompanyInterest < ActiveRecord::Base 
  
  belongs_to :user 
  
end 

# -CompanyInterest
#   -belongs to User -- HAS foreign key
#   -name, description 