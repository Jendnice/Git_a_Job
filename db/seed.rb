sophie = User.create(name: "Sophie", password: "sophie_password")
flatiron = CompanyInterest.new(name: "Flatiron", description: "tech school/bootcamp")
flatiron.user = sophie
flatiron.save
sophie.company_interests << flatiron 
sophie.save 