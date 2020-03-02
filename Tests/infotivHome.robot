*** Settings ***
Documentation   This is test suite of infotiv rental car webpage
Resource        ../Resources/keywords.robot
Library         SeleniumLibrary
Test Setup      Begin Web Test
Test Teardown   End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =     http://rental33.infotiv.net/


*** Test Cases ***
user can access infotiv home page
    [Documentation]             Given that User should be able to go to the url 'http://rental33.infotiv.net/' When the user is trying to click on to the url Then it should display Home page With Header contains 'Infotiv Car Rental' Heading and logo
    [Tags]                      Test Header
    Load Page
    Verify title of Home page and it is clickable
    Verify Logo is clickable


User Should not be able to login with wrong credentials
    [Documentation]             Given that User Should not be able to loggin with Invalid Username and password When User is trying to loggin with wrong UserName and wrong Password Then Web page should display a warning text like 'Wrong e-mail or password'
    [Tags]                      Negative_Test InvalidLogin
    Load Page
    Verify Login With wrong credentials
    Submit Login


User Should be ble able to create a New USer
    [Documentation]             Given that User Should be able to register as a new user When User entered all the required fields for creating user in the correct format Then Web page should create a new user with welcome text 'You are signed in as username'
    [Tags]                      Test Create User
    Load Page
    Verify Create User Functionality


Verify start date Selection and verification
    [Documentation]             In this Test case verified default date displayed in start date is current date And for the start date applied Boundary Value Analysis verified min and max value of start date (Valid Boudary value) less than a day from min date and greater than a day to max date (Invalid Boundary Value) also verified
    [Tags]                      Test DateSelection
    Load Page
    Verify Default Date is diplayed in start date is current date
    Verify The Min Date For The Start Date
    Verify The Max Date For The Start Date
    Verify Less A Day From Min Date (Invalid) For The Start Date
    Verify Add A Day To Max Date (Invalid) For the Start Date
    Verify Selected Start Date Should Be Between Min and Max Values
    Verify The Min Date For The End Date
    Verify The Max Date For The End Date


Verify functionality of booking a car
     [Documentation]             This is a longest test case verifying the user should be able to book a car including logging in,Date selection,car selection,confirm booking and verified Booking in 'My Page' Table
     [Tags]                      Test BookingACar
     Load Page
     login
     verify user is logged in and in home page
     Choose Start and End Date To Book A car
     Verify Booked Date is correct
     Should Be Able to Select A car
     Should be able to enter Card deatails
     Should Be able to verify whether car is booked or not


Verify Navigation between Pages
     [Documentation]             Given that User Should be able to navigate to 'About' and 'Create User Page' From 'Home' Page When User Click onto the 'About' and 'create user page'  url Then the webpage should display 'About' page with 'Welcome' text And 'Create User Page' with 'Create a new user' text
     [Tags]                      Navigate between pages
     Load Page
     Check Navigation Between Home And About And Create User Page


Checking Car booking functionality
    [Documentation]             Given that user should be able to book a car by using proper credentials When the user entered all the data properly Then the web page should be able to book a car according to user preference and show a booked message
    [Tags]                      VG_Test Booking Car
    Load Page
    verify car booking






















