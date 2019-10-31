class User < ActiveRecord::Base 
  
  has_secure_password 
  has_many :company_interests
  
end 

# -User
#   -has many company_interests -- NO foreign key 
#   -username, password 