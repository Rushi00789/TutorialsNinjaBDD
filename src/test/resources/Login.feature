@LoginPage
Feature: User Login
Registed user should be able to login to access account details

Background:  
  Given To launch the browser "chrome"
  And To enter the site url "https://tutorialsninja.com/demo/index.php?route=account/login"
    

 @ValidData 
 Scenario: To validate dashboard page title when user enter valid login data
 And To enter the uName "binaryrushi@gmail.com"  
 And To enter the uPass "salman007" 
 When To click on login button  
 Then To validate the dashboard  title "My Account"
 And To logout from the dashboard page 
 And To close the browser 
 
@InvalidData 
Scenario Outline: To validate login page title when user enter invalid data  
And To enter the uName "<userName>"  
And To enter the uPass "<userPassword>" 
When To click on login button  
Then To validate the message "Warning: No match for E-Mail Address and/or Password." is displayed 
And To close the browser
  
 Examples:     
                |   testname        |     userName        | userPassword|
					      |Both are empty     |                     |             |    
					      |userName is empty  |                     |   123456    |    
					      |password is empty  |binaryrushi@gmail.com|             |    
					      |userName is invalid| queuecodes          |   salman007 |    
					      |password is invalid|binaryrushi@gmail.com|   123213    |    
					      |Both are invalid   |queuecodes@gmail.    |   121212    | 
 
