*** Settings ***
Documentation  Test Suite to verify some basic features such as select answer, persistence of the chosen answer and submission

Resource    ../keywords/CommonConfig.robot
Resource    ../keywords/pageobjects/LoginPage.robot
Resource    ../keywords/pageobjects/Assessment.robot
Resource    ../keywords/pageobjects/NavigationActions.robot
Resource    ../variables/locators.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test



*** Test Cases ***
Login with correct entry
    [Documentation]  Login with a valid user and confirms the correct login
    Navigates To
    Login with valid user and password
    
Begin Assessment questions
    Start Assessment
    Verify if the assessment has started

Choose answer for Question 1, navigates, return and verifies
    [Documentation]  Selects a answer, navigates to different questions, returns to check if the selected answer is saved and modifies the answer
    Select radio button answer    ${RADIO_QUESTION_1_1}
    Go to the next question
    Go to the next question
    Go to the previous question
    Go to a specific question    ${QUESTION_1}    Question 1
    Verify if answer is saved    ${RADIO_QUESTION_1_1}
    Change radio button answer    ${RADIO_QUESTION_1_2}

Go to Question 10 and select more than one checkbox
    [Documentation]  Verifies if the checkbox options are working as expected
    Go to a specific question    ${QUESTION_10}    Question 10
    Select Checkbox    ${BOX_QUESTION_10_1}
    Select Checkbox    ${BOX_QUESTION_10_2}
    Select Checkbox    ${BOX_QUESTION_10_3}
    Go to the next question
    Go to the previous question
    Checkbox Should Be Selected    ${BOX_QUESTION_10_1}
    Checkbox Should Be Selected    ${BOX_QUESTION_10_2}
    Checkbox Should Be Selected    ${BOX_QUESTION_10_3}

Go to the review page and submit
    Go to the review page
    #Select Element    ${SUBMIT_BUTTON}