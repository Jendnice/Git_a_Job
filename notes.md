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
       a. more advanced formatting (putting companies in index in a list; updating heading tags, line breaks, etc.; more advanced or different options for submitting; updating the layout and color scheme, change description to "text" instead of "string", add timestamps to your databases)
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
       c. maybe add log-out to additional pages?
  
  
  -add delete/destroy to company_interests controller (make it possible for user to delete a company_interest)
  -work on editing a company. Changes don't seem to be saved and populated through.
  -change index so user can click directly on each company for add'l info (can replace "Edit" with this per company and then add edits onto individual company pages with delete, etc. Or can have link to click or edit on index page and delete on individual company page.)
  -update company_listings/:id so it only shows current user his/her own companies. Currently another user can index directly into someone else's companies. Rehashed line of delete route to prevent them from deleting. But when you're updating this, check and make sure another user can't access, read, edit, or delete another user's companies.
  -add general links to bottom of pages where user is logged in so they can navigate around (logout, companies, "create new" on main page, etc.) Right now they get kind of stuck if they choose one path.
  -Make sure edit company doesn't save the edits as a new company, but instead replaces the old one 
  -need to update error for any time a user is checked as logged in and not (company_interests, company_interests/id, company_interests/new)
  -update user routes so they don't need "users" in the url ("/login" vs. "/users/login"). Remember you'd have to update the route and the forms. Might not be worth it. Think about it. 
  -some way for a personalized error to pop up when an id that's not found is entered as opposed to the error page that pops up spelling out the error (the AR one comes up currently, not the sinatra one)
 

  
  