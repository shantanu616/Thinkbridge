# Thinkbridge

#If You are using below db then use credentials as mentioned below:
USER CREDENTIALS:  
email:shantanugupta616@gmail.com
password:Admin@123



(A).For Running Backend Part Steps To Be Followed

1. Setup Laravel In Your System
2. Clone Api folder in your system and then run command-
         
         composer install
         
3. After that go to .env file and change database configuration
4.Go to config/constant.php and inside that change $url variable with your system project path.
5.If you face any problem go to laravel official doc for project setup.




(B).For Running FrontEnd Part Steps To Be Followed

1. Setup Laravel In Your System
2. Clone FronEnd folder in your system and then run command-
         
         npm install
         
 3. After installation Go To src/urls.js file and change the baseUrl with your Api Folder path:
 
          Example:  http://your_ip_address/path_to_project/public/api
          
          
 4. To run react project run command-
 
        npm start
      
 NOTE: If Login Part Does Not Work Check Laravel passport Installation
 
 
(C). For Running Database Part Steps To Be Followed
 
  Import Thinkbridge.sql file into your database
