***Settings***
Resource                    ../pageObjects/Login.robot
Resource                    ../pageObjects/homePage.robot
Resource                    ../pageObjects/book.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

***Test Cases***
User Shoul be able to complete book
        [Documentation]                     Test to verify user should be able to complete booking

        verify homepage appears
        Tap Sign in button homepage
        Verify Login page
        Input Username                      username=support@ngendigital.com
        Input Password                      pass=abc123    
        Tap Sign in Button login page
        Verify User in homepage
        User Tap link Booking
        Verify User in booking page
        User Select from City
        User Select Destination City
        User select Flight class
        User select Start Date
        User Select End Date
        User tap Option Booking
        User tap chek box booking a day
        Tap Booking Button
        User select Booking Price
        Tap Confirm Button
        Verify User was Booked
