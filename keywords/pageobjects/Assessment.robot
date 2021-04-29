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
    Validate Page Content    ${HEADER_ASSESSMENT}    ${id_number}

Verify if answer is saved
    [Documentation]  Check if the selected answer is saved in the desired question
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Element Should Be Enabled    ${locator}

Select radio button answer
    [Documentation]  Select one radio button in the desired question
    [Arguments]  ${locator}
    Select Element    ${locator}

Change radio button answer
    [Documentation]  Change the radio button in the desired question
    [Arguments]  ${locator}
    Select Element    ${locator}
