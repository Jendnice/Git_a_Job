class CreateCompanyInterests < ActiveRecord::Migration
  
  def change
    create_table :company_interests do |t|
      t.string :name 
      t.string :description 
    end 
  end
  
end



# -CompanyInterests
#   -belongs to User -- HAS foreign key
#   -name, description 