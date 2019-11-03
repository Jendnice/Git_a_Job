# Seed your database with `rake db:seed`

ted = User.create(username: "Ted", password: "ted_password")
flatiron = CompanyInterest.new(name: "Flatiron", description: "tech school/bootcamp", applied: true)
flatiron.user = ted
flatiron.save
ted.company_interests << flatiron 
ted.save 

cassie = User.create(username: "Cassie", password: "cassie_password", applied: false)
CompanyInterest.create(name: "All Things Tech", description: "IT company, full stack role", user: cassie) 

