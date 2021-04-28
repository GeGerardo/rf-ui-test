*** Settings ***
Resource    ../keywords/CommonConfig.robot
Resource    ../keywords/pageobjects/LoginPage.robot
Resource    ../keywords/pageobjects/Assessment.robot


Suite Setup  Begin Web Test
#Suite Teardown  End Web Test

*** Test Cases ***
Login with correct entry
    Login with valid user and password
    Check if the user logged to the expected account
    
Assessment Test
    Start Assessment
    Verify if the assessment has started
    Select answer for question 1