*** Settings ***
Resource    ../keywords/CommonConfig.robot
Resource    ../keywords/pageobjects/LoginPage.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test
Test Template  Invalid Login Scenarios

*** Test Cases ***                                    USERNAME        PASSWORD        ERROR MESSAGE
Verify Login Fails - Wrong Username                   Blabla          hm87            Invalid username or password
Verify Login Fails - Wrong Username and Password      Blabla          random          Invalid username or password
Verify Login Fails - Wrong Password                   76260211        random          Invalid username or password
#Verify Login Fails - Blank Username                   ${EMPTY}        random          Invalid username or password
#Verify Login Fails - Blank Username and Password      76260211        ${EMPTY}        Invalid username or password

*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${wrong_name}  ${wrong_pass}  ${error_msg}
    Navigates To
    Select Element    ${REGISTERED_USER}
    Insert User    ${USERNAME}    ${wrong_name}
    Insert Pass    ${PASSWORD}    ${wrong_pass}
    Dropdown List by Value    ${DROP_LANGUAGE}    ${LANGUAGE}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${LOGIN_WARNING}
    Element Should Contain    ${LOGIN_WARNING}    ${error_msg}