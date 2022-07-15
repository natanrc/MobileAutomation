***Settings***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/Login.robot
Resource                    ../pageObjects/homePage.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

***Test Cases***
User should able login with valid data
        [Documentation]                     Test to verify user should be able login with valid data

        verify homepage appears
        Tap Sign in button homepage
        Verify Login page
        Input Username                      username=support@ngendigital.com
        Input Password                      pass=abc123    
        Tap Sign in Button login page
        Verify User in homepage