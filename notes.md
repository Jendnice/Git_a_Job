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
       -login, new
    -Failure
    -Layout 
    -Opening page
    
TO DOs:

  4. Blog post ("Models, Controllers, and Views - Oh, My!")
  5. Publish video link to youtube like last time, and pull link
  
  9. Move notes file to Slack or Wordpad
 
  11. Final check of everything on site (check links etc.) Show Keith. <3

  12. Finalize and submit everything (Git repo link, blog link, walkthrough video link)
  
  13. Prep for project review (see notebook notes)
        a. Make sure you have plenty of saved data for your project review.
  14. Maybe schedule time with Corinna and/or Katie
  

       
  
  Ideal Company listing:
     1. Company name
     2. Company description
     3. Company URL
     4. Company location/job location 
     5. Applied - Y/N
     6. Notes
     
  -Add timestamps to your company_interests db, format links on the bottom of the page to go horizontal instead of all stacked vertical
       b. add in more options for companies (company url, location, notes, etc.)
  -Change company description to "text" instead of "string" - (The prepped but deleted rakefile is in Git. Or can check bookmark for formatting. It'll probably be "change_column" and do with up and down instead of just change, since column change can't be rolled back.) Decide if you want to do that with the description or if you'd rather break it down another way. (Separate columns added for location, add'l info, etc.) Remember to update elsewhere for any columns you update or add.
  -More advanced formatting (putting companies in index in a list; updating heading tags, line breaks, etc.; more advanced or different options for submitting; updating the layout and color scheme, change description to "text" instead of "string", add timestamps to your databases, add in more options for companies (company url, location, notes, etc.)
  -Maybe update logout so it says goodbye instead of the repeat for login?
     
      
  

 

  
  