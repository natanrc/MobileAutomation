*** Settings ***
Documentation               Search keywords
Variables                   ../resource/search_locators.yaml

***Keywords***
Verify Search page
        Wait Until Element Is visible      ${search_page}
        Element Should Be Visible          ${txt_flightNo} 
        Element Should Be Visible          ${btn_search}        

User Tap Search link
        Click Element                      ${tapsearch_link}

Enter Flight Number
        Wait Until Element Is visible      ${search_contain}
                
        [Arguments]                        ${flight}
        Input Text                         ${txt_flightNo}               ${flight}

Click Button Search
        Click Element                      ${btn_search}

Verify User in Search Page
        Wait Until Element Is visible      ${get_flightdetails}     