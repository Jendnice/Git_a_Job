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
  2. 30 min video - ZOOM
  3. Walkthrough video 

  5. HTML and CSS (?)
  6. Bonus - error messages 
  7. Additional bonus:
       a. more advanced formatting (putting companies in index in a list; updating heading tags, line breaks, etc.; more advanced or different options for submitting; updating the layout and color scheme, change description to "text" instead of "string", add timestamps to your databases, format links on the bottom of the page to go horizontal instead of all stacked vertical)
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
  8. Re-read back through every file and delete any unnecessary comments (and refactor and clean up if/as needed)
  9. Delete unnecessary files from project (notes, links, corneal welcome, etc.)
  10. Update spec.md file per instructions on project page 
  11. See everything else on project page
  

  -ZOOM VIDEO!
  -some way for a personalized error to pop up when an id that's not found is entered as opposed to the error page that pops up spelling out the error (the AR one comes up currently, not the sinatra one)
  -Continue updating/finalizing both welcome/hello world placeholders (one in application controller and one in users controller) Check redirects to make sure you don't leave any behind if you delete them. (ex. In users_controller logout, it redirects to "/".)
  -Fix update error for any time a user is checked as logged in and not (company_interests, company_interests/id, company_interests/new). Currently goes to failure.erb file. Is that ok? Maybe work in error gem listed in project page.
  -Update language and wording as part of updating design. (Opening description, labels for login, signup, etc.) Make it personal.:)
  -Add timestamps to your company_interests db, format links on the bottom of the page to go horizontal instead of all stacked vertical
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
  -Change company description to "text" instead of "string" - (The prepped but deleted rakefile is in Git. Or can check bookmark for formatting. It'll probably be "change_column" and do with up and down instead of just change, since column change can't be rolled back.) Decide if you want to do that with the description or if you'd rather break it down another way. (Separate columns added for location, add'l info, etc.) Remember to update elsewhere for any columns you update or add. 
  
  -Continue building out welcome-placeholder as the main/home page. Put an opening description. Then can have links and redirects connected to it.
  
  
  Ideal Company listing:
     1. Company name
     2. Company description
     3. Company URL
     4. Company location/job location 
     5. Applied - Y/N
     6. Notes
     
     
  Code to play with for Y/N on show.erb: 
  <br>
  <h2><%= @company.complete ? "Done" : "Not Done" %></h2>
     
      
  

 

  
  