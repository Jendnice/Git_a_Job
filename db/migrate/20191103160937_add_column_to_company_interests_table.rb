class AddColumnToCompanyInterestsTable < ActiveRecord::Migration
  
   def change
    add_column :company_interests, :applied, :boolean
  end
  
end
