***Settings***
Resource                    ../pageObjects/Login.robot
Resource                    ../pageObjects/homePage.robot
Resource                    ../pageObjects/search.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

***Test Cases***
Input Flight Number
        verify homepage appears
        Tap Sign in button homepage
        Verify Login page
        Input Username                      username=support@ngendigital.com
        Input Password                      pass=abc123    
        Tap Sign in Button login page
        Verify User in homepage
        User Tap Search link
        Enter Flight Number                flight=DA935
        Click Button Search
        Verify User in Search Page
