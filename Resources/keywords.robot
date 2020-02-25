*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Begin Web Test
        Open Browser                about:blank  ${BROWSER}
        Maximize Browser Window


Load Page
        Go To                       ${URL}


Verify title of Home page is clickable
        ${link_text} =              Get Text  xpath://*[@id="title"]
        Should Be Equal             ${link_text}   Infotiv Car Rental
        Click Element                id:questionText
         ${link_text} =              Get Text   id:questionText
         Should Be Equal             ${link_text}    When do you want to make your trip?


Verify Logo is clickable
         Click Element                xpath://*[@id="logo"]
         Click Element                id:questionText
         ${link_text} =              Get Text   id:questionText
         Should Be Equal             ${link_text}    When do you want to make your trip?

Verify Login With wrong credentials
        Input Text


Verify input start date Selection
        Element Should Be Visible       id:start
        ${link_text} =                  Get Selected List Value     id:start
        should be equal                  ${link_text}       2020-02-25


End Web Test
        Close Browser


