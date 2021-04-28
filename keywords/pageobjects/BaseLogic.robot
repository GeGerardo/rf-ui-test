*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Validate Page Content
    [Documentation]  Keyword responsible for check string content in the page
    [Arguments]  ${locator}   ${string}
    Wait Until Element Is Visible    ${locator}
    ${ElementText} =  Get Text  ${locator}
    Should Contain   ${ElementText}  ${string}  ignore_case=true

Select Element
    [Documentation]  Keyword responsible for the click function on an element and waiting for the element to be visible.
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Insert Information
    [Documentation]  Keyword responsible for input function on an element and waiting for the element to be visible.
    [Arguments]  ${locator}   ${text}
    Wait Until Element Is Visible  ${locator}
    Input Text  ${locator}   ${text}

Insert User
    [Documentation]  Keyword responsible for input a user on an element and waiting for the element to be visible.
    [Arguments]  ${locator}   ${user}
    Wait Until Element Is Visible  ${locator}
    Input Text  ${locator}   ${user}

Insert Pass
    [Documentation]  Keyword responsible for input a pass on an element and waiting for the element to be visible.
    [Arguments]  ${locator}   ${pass}
    Wait Until Element Is Visible  ${locator}
    Input Text  ${locator}   ${pass}

Dropdown by Value
    [Documentation]  Keyword responsible for the selection of an option in a dropdown list
    [Arguments]  ${locator}  ${value}
    Wait Until Element Is Visible    ${locator}
    Select From List By Value    ${locator}   ${value}

Radio Button Choice
    [Documentation]  Keyword responsible for the click function on an element and waiting for the element to be visible.
    [Arguments]  ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}