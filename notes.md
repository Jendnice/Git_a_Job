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
  1. Blog post ("Models, Controllers, and Views - Oh, My!")
  2. 30 min video
  3. Walkthrough video 

  6. Bonus - error messages 
  7. Additional bonus:
       a. more advanced formatting (putting companies in index in a list; updating heading tags, line breaks, etc.; more advanced or different options for submitting; updating the layout and color scheme, change description to "text" instead of "string", add timestamps to your databases, format links on the bottom of the page to go horizontal instead of all stacked vertical)
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
  8. Re-read back through every file and delete any unnecessary comments (and refactor and clean up if/as needed)
  9. Delete unnecessary files from project (notes, links, corneal welcome, etc.)
  10. Update spec.md file per instructions on project page 
  11. See everything else on project page
  

  -update user routes so they don't need "users" in the url ("/login" vs. "/users/login"). Remember you'd have to update the route and the forms. Might not be worth it. Think about it. 
  -some way for a personalized error to pop up when an id that's not found is entered as opposed to the error page that pops up spelling out the error (the AR one comes up currently, not the sinatra one)
  -update both welcome/hello world placeholders (one in application controller and one in users controller)
  -Fix update error for any time a user is checked as logged in and not (company_interests, company_interests/id, company_interests/new). Currently goes to failure.erb file. Is that ok? Maybe work in error gem listed in project page.

 

  
  