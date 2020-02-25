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

user can able to select Date
    [Documentation]             This is some basic info about the test
     [Tags]                      Test DateSelection
     Load Page
     Verify input start date Selection
















