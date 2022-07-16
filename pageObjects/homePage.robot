*** Settings ***
Documentation               homepage keywords
Resource                    Base.robot
Variables                   ../resource/homepage_locators.yaml

***Keywords***
verify homepage appears
        Element Should Be Visible          ${toolbar}
        Element Should Be Visible          ${logo_homepage}  
        Element Should Be Visible          ${mainimage_homepage}
        Element Should Be Visible          ${body_title}   

Tap Sign in button homepage
        Click Element                      ${button_login}

Verify User succes to login
        Wait Until Element Is visible      ${username_homepage}