*** Settings ***
Library     SeleniumLibrary
Resource    ../../variables/locators.robot
Resource    ../../variables/data.robot
Resource    BaseLogic.robot


*** Keywords ***
Login with valid user and password
    [Documentation]  Check if the user can login with valid inputs and change the language option
    Go To    ${URL}
    Select Element    ${REGISTERED_USER}
    Insert User    ${USERNAME}    ${76260190}
    Insert Pass    ${PASSWORD}    mxet
    Dropdown by Value    ${DROP_LANGUAGE}    ${LANGUAGE}
    Click Button    ${LOGIN_BUTTON}

Check if the user logged to the expected account
    Validate Page Content    ${USER_ID}    0071
    