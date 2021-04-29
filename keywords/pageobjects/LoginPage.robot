*** Settings ***
Library    SeleniumLibrary
Library    RobotEyes
Resource    ../../variables/locators.robot
Resource    ../../variables/data.robot
Resource    BaseLogic.robot


*** Keywords ***
Navigates To
    [Documentation]  Leads the test to the desired page and initialize the RbotEyes library
    Go To    ${URL}
    Open Eyes    SeleniumLibrary  ${PRECISION_IMAGE}

Login with valid user and password
    [Documentation]  Check if the user can login with valid inputs and change the language option
    Select Element    ${REGISTERED_USER}
    Insert User    ${USERNAME}    ${login_id}
    Insert Pass    ${PASSWORD}    ${pass}
    Dropdown List by Value    ${DROP_LANGUAGE}    ${LANGUAGE}
    Click Button    ${LOGIN_BUTTON}
    Validate Page Content    ${USER_ID}    ${id_number}

Invalid Login Scenarios
    Select Element    ${REGISTERED_USER}
    Insert User    ${USERNAME}    ${user_name}
    Insert Pass    ${PASSWORD}    ${pass}
    Dropdown List by Value    ${DROP_LANGUAGE}    ${LANGUAGE}
    Click Button    ${LOGIN_BUTTON}
    Element Should Contain    ${LOGIN_WARNING}    ${error_msg}