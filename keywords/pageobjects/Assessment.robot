*** Settings ***
Library     SeleniumLibrary
Resource    ../../variables/locators.robot
Resource    ../../variables/data.robot
Resource    BaseLogic.robot

*** Keywords ***
Start Assessment
    [Documentation]  Keyword responsible for start the assessment test flow
    Select Element    ${START_ASSESSMENT}

Verify if the assessment has started
    [Documentation]  Keyword to check if the assessment started
    Validate Page Content    ${HEADER_ASSESSMENT}    0071

Select answer for question 1
    Select Element    ${RADIO_QUESTION_1}

Go to the next question
    [Documentation]  Keyword to go to the next question
    Select Element    ${NEXT_BUTTON}

Go to the previous question
    [Documentation]  Keyword to go to the next question
    Select Element    ${BACK_BUTTON}

Go to the review page
    [Documentation]  Keyword to go to the review page
    Select Element    ${REVIEW_BUTTON}