*** Settings ***
Library                                     SeleniumLibrary
Library                                     DateTime
Library                     SeleniumLibrary
Library                     DateTime


*** Keywords ***
Begin Web Test
        Open Browser                        about:blank         ${BROWSER}
        Maximize Browser Window


Load Page
        Go To                               ${URL}


Verify title of Home page is clickable
        ${link_text} =                      Get Text            xpath://*[@id="title"]
        Should Be Equal                     ${link_text}        Infotiv Car Rental
        Click Element                                           id:questionText
        {link_text} =                     Get Text              id:questionText
        Should Be Equal                    ${link_text}         When do you want to make your trip?


Verify Logo is clickable
         Click Element                                          xpath://*[@id="logo"]
         Click Element                                          id:questionText
         ${link_text} =                     Get Text            id:questionText
         Should Be Equal                    ${link_text}        When do you want to make your trip?


Verify Login With wrong credentials
        Input Text                          id:email            sdsf12433434
        Input Text                          id:password         sdfs32434


Submit Login
        Click Button                                            id:login
        ${link_text} =                      Get Text            id:signInError
        Should Be Equal                     ${link_text}        Wrong e-mail or password



Verify Default Date is diplayed and it is current date
        Element Should Be Visible                               id:start
        ${display_date} =                   Get Value           id:start
        ${current_date} =                   Get Current Date    local    result_format=%Y-%m-%d
        should be equal                     ${current_date}     ${display_date}


Verify The Min Date For The Start Date
        ${min_value_start} =                Get Element Attribute     id:start   attribute=min
        ${current_date} =                   Get Current Date           local  result_format=%Y-%m-%d
        Should Be Equal                     ${current_date}         ${min_value_start}


Verify The Max Date For The Start Date
        ${min_value_start} =                Get Element Attribute           id:start   attribute=min
        ${max_value_start} =                Get Element Attribute           id:start   attribute=max
        ${new_date} =                       Add Time To Date                ${min_value_start}  29 days   result_format=%Y-%m-%d
        Should Be Equal                     ${new_date}                     ${max_value_start}


Verify Less A Day From Min Date (Invalid) For The Start Date
        ${min_value_start} =                Get Element Attribute          id:start   attribute=min
        ${current_date} =                   Get Current Date          local  result_format=%Y-%m-%d
        ${current_date_less_A_day} =        Subtract Time From Date        ${current_date}  1 days   result_format=%Y-%m-%d
        Should Not Be Equal                 ${current_date_less_A_day}     ${min_value_start}


Verify Add A Day To Max Date (Invalid) For the Start Date
        ${min_value_start} =                Get Element Attribute           id:start   attribute=min
        ${max_value_start} =                Get Element Attribute           id:start   attribute=max
        ${new_max_date} =                   Add Time To Date                ${min_value_start}  29 days   result_format=%Y-%m-%d
        ${new_max_value_add_A_day} =        Add Time To Date                ${new_max_date}  1 days   result_format=%Y-%m-%d
        Should Not Be Equal                 ${new_max_value_add_A_day}      ${max_value_start}








End Web Test
        Close Browser


