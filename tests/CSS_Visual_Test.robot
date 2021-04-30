*** Settings ***
Documentation  Test Suite to visually verify the Login Screen, user screen and first page of a test

Resource    ../keywords/CommonConfig.robot
Resource    ../keywords/pageobjects/LoginPage.robot
Resource    ../keywords/pageobjects/Assessment.robot
Resource    ../keywords/pageobjects/NavigationActions.robot
Resource    ../variables/locators.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test



*** Test Cases ***
Login Screen Validation
    [Documentation]  Login with a valid user and does a CSS Visual Validation
    Navigates To
    Visual Test Comparison    ${REGISTERED_USER}
    Login with valid user and password
    Visual Test Comparison    ${USER_ID}

Assessment Screen Validation
    [Documentation]  Start Assessment test and does a CSS Visual Validation
    Start Assessment
    Verify if the assessment has started
    Visual Test Comparison    ${FIRST_PAGE_CHECK}