class CompanyInterest < ActiveRecord::Base 
  
  belongs_to :user 
  
  validates :name, presence: true
  validates :description, presence: true
  
end 

# -CompanyInterest
#   -belongs to User -- HAS foreign key
#   -name, description 