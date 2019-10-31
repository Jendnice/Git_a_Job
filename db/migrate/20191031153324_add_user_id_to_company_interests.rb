class AddUserIdToCompanyInterests < ActiveRecord::Migration
  
  def change
    add_column :company_interests, :user_id, :integer
  end
  
end
