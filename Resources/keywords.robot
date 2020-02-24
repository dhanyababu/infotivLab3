*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Begin Web Test
        Open Browser                about:blank  ${BROWSER}
        Maximize Browser Window


Go To Web Page
        Load Page
        Verify Page Loaded


Load Page
        Go To                       ${URL}


Verify Page Loaded
        ${link_text} =              Get Text  xpath://*[@id="title"]
        Should Be Equal             ${link_text}   Infotiv Car Rental


End Web Test
        Close Browser


