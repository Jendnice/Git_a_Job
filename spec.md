# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app -- *I used the Corneal gem to help build my Sinatra app. My app has models, views, and controllers and is a CMS for people who are career-searching.*
- [x] Use ActiveRecord for storing information in a database -- My app uses ActiveRecord and SQLite to store data about users and company interests. For users, it stores their usernames and passwords. For company interests, it stores the company name, description, and whether the user has applied to the company or not. 
- [x] Include more than one model class (e.g. User, Post, Category) -- I have two models in my app - the User model and the CompanyInterest model. 
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) -- The User model has_many company interests.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) -- The CompanyInterest model belongs_to a User.
- [x] Include user accounts with unique login attribute (username or email) -- The user accounts in my app require a unique username to sign up and/or login.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying -- I have the seven RESTful routes to ensure CRUD actions are possible on company interests.
- [x] Ensure that users can't modify content created by other users -- My app consistently checks if a user is logged in and is the current user before allowing any CRUD actions. Furthermore, a user can only access his/her own content, so any actions taken can only be on a user's own content.
- [x] Include user input validations -- I utilize the bcrypt gem as well as the macros "has_secure_password" and "validates" in my models to ensure input is valid for signing up or logging in, and that the password is salted and hashed before being stored in the database.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) -- Whenever someone tries to access a page that they need to be logged in for, they're rerouted to an error page. If someone tries to log in or sign up with incorrect or incomplete info, they're redirected to the signup page.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code -- I've included a README.md with a description of my app, install instructions, a contributors guide, and a link to the license for my code. I've also included a CONTRIBUTING.md file and LICENSE.txt file as part of this.

Confirm
- [x] You have a large number of small Git commits -- Yes. I currently have 73 commits. (Before this one. ;) )
- [x] Your commit messages are meaningful  -- Yes. My commit messages explain what was done.
- [x] You made the changes in a commit that relate to the commit message -- Yes. My commit messages include which files were involved.
- [x] You don't include changes in a commit that aren't related to the commit message -- Yes, my commits and messages relate.