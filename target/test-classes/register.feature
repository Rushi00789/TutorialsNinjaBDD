@registerPage
Feature: Register a user
Register a user for creation of account

Background:  
  Given To launch the browser "chrome"
  And To enter the site url "https://tutorialsninja.com/demo/index.php?route=account/login"

Scenario Outline: To register user for account creation  
When To user click on register option
And To enter the fName "<firstName>"  
And To enter the lName "<lastName>" 
And To enter the email "<email>"
And To enter the telephone "<mobile>"
And To enter the upass "<pass>"
And To enter the confPass "<cpass>"
And To subscribe the newsletter click
And To agree privacy policy checkbox click
When To click on continue
Then To verify account has been created 
Then TO verify the my account text displayed 
And To close the browser
  
 Examples:     
                |   UserNames       |     firstName        | lastName         | email                   | mobile | pass    | cpass   |
					      |User1              |        Ranjit        |   Kadam          |  kakakaki@gmail.com     |1245637 |salman007|salman007|
					      |User2              |       Subhash        |   Patil          |  rajarani@gmail.com     |1245678 |salman007|salman007|
					      |User3              |        Karan         |   Nikam          |  papaumama@gmail.com    |1245789 |salman007|salman007|
					      |User4              |        Sanjay        |   Bulbule        |  velammaaunty@gmail.com |1245778 |Salman007|Salman007|
					                          
 