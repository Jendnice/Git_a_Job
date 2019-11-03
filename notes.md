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
  2. Walkthrough video (approx. 10 minutes)
  3. Clean up code (refactor, clean up ruby methods, abstract out if needed, clean up HTML? Esp. spacing at bottom and lining up or correctly staggering breaks and each new line of code.)
  4. SCHEDULE your project review!

  6. README
      a. Application (short) Description
      b. Installation Guide
      c. Contribution Guide
      d. Link to the License for your code/License Statement (link to MIT licensing)
  7. Additional bonus:
       a. more advanced formatting (putting companies in index in a list; updating heading tags, line breaks, etc.; more advanced or different options for submitting; updating the layout and color scheme, change description to "text" instead of "string", add timestamps to your databases, format links on the bottom of the page to go horizontal instead of all stacked vertical)
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
  8. Re-read back through every file and delete any unnecessary comments (and refactor and clean up if/as needed)
  9. Delete unnecessary files from project (notes, links, corneal welcome, etc.)
  10. Update spec.md file per instructions on project page 
  11. See everything else on project page
  12. Add/adjust any other notes from your notebook.
  
  

  
  -Figure out how to add "applied" to database. Likey need to add it as a new column. Maybe make it a boolean and then assign the wording to T and F? (Make it a form if not already?) If too complicated, just delete this part from show.erb. (See bullets further below for add'l column ideas.)
  
  -Update layout to include message and/or links that you want throughout. (Logout link, etc.) Can then abstract this out from the individual view files so it's held in one place and only shown when user is logged in. (Could do other conditionals here if it makes sense, too. Ex. If logged out, if logged in, etc. Don't get too crazy with it, though!) See Corinna's layout file for how she did it.
  
  -Error messages. See your notes and try to implement based on that. (Might still use failure.erb for some and error messages for others? See how it goes.)
  
  -Above notes, too! (README, etc.)
  
  -Update design (see above for notes)
      -Update language and wording as part of updating design. (Opening description, labels for login, signup, etc.) Make it personal.:)
      -Maybe update logout so it says goodbye instead of the repeat for login?
      -Maybe italicize the description area of company pages and tab it in so it stands out a bit?
  
  -Add timestamps to your company_interests db, format links on the bottom of the page to go horizontal instead of all stacked vertical
       b. add in more options for companies (company url, location, applied - Y/N, notes, etc.)
       
  -Change company description to "text" instead of "string" - (The prepped but deleted rakefile is in Git. Or can check bookmark for formatting. It'll probably be "change_column" and do with up and down instead of just change, since column change can't be rolled back.) Decide if you want to do that with the description or if you'd rather break it down another way. (Separate columns added for location, add'l info, etc.) Remember to update elsewhere for any columns you update or add.
  
  
  
  
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
     
      
  

 

  
  