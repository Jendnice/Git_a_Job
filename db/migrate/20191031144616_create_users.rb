class CreateUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|
     t.string :username 
     t.string :password_digest 
   end 
  end
  
end


# -Users 
#   -has many company_interests -- NO foreign key 
#   -username, password 
