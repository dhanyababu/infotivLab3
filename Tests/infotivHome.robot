*** Settings ***
Documentation   This is some basic info about the whole test suit
Resource        ../Resources/keywords.robot
Library         SeleniumLibrary
Test Setup      Begin Web Test
Test Teardown   End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  http://rental33.infotiv.net/webpage/html/gui/about.php


*** Test Cases ***
user can conduct a search and add to cart
    [Documentation]             This is some basic info about the test
    [Tags]                      Test HomePage
    Begin Web Test
    Go To Web Page
    Load Page
    Verify Page Loaded

















