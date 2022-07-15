*** Settings ***
Documentation               Search keywords
Variables                   ../resource/book_locators.yaml

***Keywords***
User Tap link Booking
        Click Element                      ${TapBook_page}

Verify User in booking page
        Wait Until Element Is visible      ${book_page}
        Element Should Be Visible          ${btn_book}

User Select from City
        Click Element                      ${Tapfrom_city}
        Wait Until Element Is visible      ${to_city}
        Click Element                      ${from_city}                     

User Select Destination City
        Click Element                      ${TapTo_city}
        Wait Until Element Is visible      ${to_city}
        Click Element                      ${to_city}                       

User select Flight class
        Click Element                      ${Tapflight_class}
        Wait Until Element Is visible      ${to_city}
        Click Element                      ${flight_class}                              

User select Start Date
        Click Element                      ${TapStart_date}
        Wait Until Element Is visible      ${btn_OK}
        Click Element                      ${start_date}
        Click Element                      ${btn_OK}

User Select End Date
        Click Element                      ${TapEnd_date}
        Wait Until Element Is visible      ${btn_OK}
        Click Element                      ${end_date}
        Click Element                      ${btn_OK}

User tap Option Booking
        Click Element                      ${opt_book}

User tap chek box booking a day
        Click Element                      ${chkBox_book}

Tap Booking Button
        Click Element                      ${btn_book}

User select Booking Price
        Wait Until Element Is visible      ${book_contain}
        Click Element                      ${book_price}
        
Tap Confirm Button
        Click Element                      ${btn_confirm}

Verify User was Booked
        Wait Until Element Is visible      ${booked_page}