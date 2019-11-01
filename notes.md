Project - Git_a_Job 

Database: 
   -Users 
      -Users have many company_interests 
   -Company_interests
      -Company_interests belong to Users
      
Models: 
   -User
      -Users have many company_interests 
   -Company_interests
      -Company_interests belong to Users

Controllers:
   -ApplicationController
   -CompanyInterestsController 
   -UsersController 

Views:
    -Company_Interests
       -index, show, edit, new 
    -Users 
       -login, new, show (?)
    -Index (?)
    -Layout 
    
TO DOs:
  1. Build basic framework - database, models, controllers, views 
  2. Make sure everything is working as you go 
  3. Build out each component fully (individual models, controllers, views, etc. - SRP)
  4. User can signup/login/logout (authentication, secure password, salting and hashing, etc.)
  5. CRUD actions (only when verified user and for his/her items only)
  6. Additional features based on instructions
  7. Bonus - error messages 
  8. Additional bonus:
       a. more advanced formatting (putting companies in index in a list; updating heading tags, line breaks, etc.; more advanced or different options for submitting; updating the layout and color scheme)
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
       c. maybe add log-out to additional pages?
  
  -need to add something to ensure users have to be logged in to see company_interests and show pages. That they can't just type in "company_interests" and go directly to the page.
      -this might be built in as part of building out company_interests and show erbs. (It will pull directly from the user, so only the actual use will see the actual content.)
  -need to add something to encrypt passwords when they're entered in login and signup page so that it doesn't just show the letters as they type them
  -add delete/destroy to company_interests controller (make it possible for user to delete a company_interest)
  -add general links to bottom of pages where user is logged in so they can navigate around (logout, companies, etc.) Right now they get kind of stuck if they choose one path.
  -Make sure edit company doesn't save the edits as a new company, but instead replaces the old one 

** LEFT OFF WITH ERROR WHEN CREATING NEW COMPANY IN SHOTGUN - NEED TO UPDATE THE "company_interest" attribute in that view. **
  
  