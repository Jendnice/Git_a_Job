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
   -ComapnyInterestsController 
   -UsersController 

Views:
    -Company-Interests
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
  