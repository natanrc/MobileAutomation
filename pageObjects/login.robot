*** Settings ***
Documentation               Login realted keywords
Variables                   ../resource/login_locators.yaml


*** Keywords ***
Verify Login page
    Wait Until Element Is visible           ${userName_input}
    Element Should Be Visible               ${userName_input} 
    Element Should Be Visible               ${signButton_login}

Input Username
    [Arguments]                 ${username}
    Input Text                  ${userName_input}               ${username}
    
Input Password
    [Arguments]                 ${pass}
    Input Text                  ${Password_input}               ${pass}

Tap Sign in Button login page
    Click Element               ${signButton_login}

Verify User in homepage
    Wait Until Element Is visible           ${user_success}