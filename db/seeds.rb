# Add seed data here. Seed your database with `rake db:seed`

sophie = User.create(name: "Sophie", password: "sophie_password")
flatiron = CompanyInterest.new(name: "Flatiron", description: "tech school/bootcamp")
flatiron.user = sophie
flatiron.save
sophie.company_interests << flatiron 
sophie.save 

corinna = User.create(name: "Corinna", password: "corinna_password")
CompanyInterest.create(name: "TN_Tech_Company", description: "IT company, Front End Development role", user: corinna) 

