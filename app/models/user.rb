class User < ActiveRecord::Base 
  
  has_secure_password 
  has_many :company_interests
  
  validates :username, uniqueness: true
  validates :username, presence: true 
    
end 
