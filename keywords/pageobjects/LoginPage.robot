*** Settings ***
Library     SeleniumLibrary
Library    RobotEyes
Resource    ../../variables/locators.robot
Resource    ../../variables/data.robot
Resource    BaseLogic.robot


*** Keywords ***
Login with valid user and password
    [Documentation]  Check if the user can login with valid inputs and change the language option
    Go To    ${URL}
    Open Eyes    SeleniumLibrary  ${PRECISION_IMAGE}
    Select Element    ${REGISTERED_USER}
    Insert User    ${USERNAME}    ${76260196}
    Insert Pass    ${PASSWORD}    xyyf
    Dropdown List by Value    ${DROP_LANGUAGE}    ${LANGUAGE}
    Click Button    ${LOGIN_BUTTON}
    Validate Page Content    ${USER_ID}    0073
