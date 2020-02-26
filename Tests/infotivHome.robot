*** Settings ***
Documentation   This is some basic info about the whole test suite of infotiv rental car webpage
Resource        ../Resources/keywords.robot
Library         SeleniumLibrary
Test Setup      Begin Web Test
Test Teardown   End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =     http://rental33.infotiv.net/


*** Test Cases ***
user can access infotiv home page
    [Documentation]             This is some basic info about the test
    [Tags]                      Test Header
    Load Page
    Verify title of Home page is clickable
    Verify Logo is clickable

User Should not be able to login with wrong credentials
    [Documentation]             This is some basic info about the test
    [Tags]                      Test InvalidLogin
    Load Page
    Verify Login With wrong credentials
    Submit Login


Verify start date Selection and verification
    [Documentation]             This is some basic info about the test
     [Tags]                      Test DateSelection
    Load Page
    Verify Default Date is diplayed and it is current date
    Verify The Min Date For The Start Date
    Verify The Max Date For The Start Date
    Verify Less A Day From Min Date (Invalid) For The Start Date
    Verify Add A Day To Max Date (Invalid) For the Start Date

















