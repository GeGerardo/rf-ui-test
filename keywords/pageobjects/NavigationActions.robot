*** Settings ***
Library     SeleniumLibrary
Library    String
Library    Collections
Resource    ../../variables/locators.robot
Resource    ../../variables/data.robot
Resource    BaseLogic.robot

*** Keywords ***
Go to the next question
    [Documentation]  Go to the next question and evaluates if the page changed accordingly
    ${actual_page} =  Get Element Attribute  ${VISIBLE_PAGE}  title
    ${actual_page} =  Split String  ${actual_page}
    ${actual_page} =  Remove From List  ${actual_page}  1
    ${actual_page} =  Convert To Number    ${actual_page}
    Select Element    ${NEXT_BUTTON}
    ${new_page} =  Get Element Attribute    ${VISIBLE_PAGE}  title
    ${new_page} =  Split String  ${new_page}
    ${new_page} =  Remove From List  ${new_page}  1
    ${new_page} =  Evaluate    ${new_page} - 1 
    Should Be Equal    ${actual_page}    ${new_page}

Go to a specific question
    [Documentation]  Navigate to the desired question and verifies
    [Arguments]  ${locator}   ${question_number}
    Select Element    ${locator}
    ${actual_page} =  Get Element Attribute  ${VISIBLE_PAGE}  title
    Should Be Equal    ${actual_page}    ${question_number}

Go to the previous question
    [Documentation]  Go to the previous question and evaluates if the page changed accordingly
    ${actual_page} =  Get Element Attribute  ${VISIBLE_PAGE}  title
    ${actual_page} =  Split String  ${actual_page}
    ${actual_page} =  Remove From List  ${actual_page}  1
    ${actual_page} =  Convert To Number    ${actual_page}
    Select Element    ${BACK_BUTTON}
    ${new_page} =  Get Element Attribute    ${VISIBLE_PAGE}  title
    ${new_page} =  Split String  ${new_page}
    ${new_page} =  Remove From List  ${new_page}  1
    ${new_page} =  Evaluate    ${new_page} + 1 
    Should Be Equal    ${actual_page}    ${new_page}

Go to the review page
    [Documentation]  Keyword to go to the review page
    Select Element    ${REVIEW_BUTTON}

