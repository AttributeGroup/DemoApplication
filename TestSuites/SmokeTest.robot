*** Settings ***
Library     ExtendedSelenium2Library
Resource    ../Resources/PageObjects/LoginPage.robot
Resource    ../Resources/Common/SQL.robot
Resource    ../Configs/Default.robot
Suite Setup        Prepare Test Context
Suite Teardown     Exit Browser

*** Test Cases ***
SmokeTest - Login
    LoginPage.Log Into CRM Application    ${USER}    ${PASS}

*** Keywords ***
Prepare Test Context
    Launch Attribute CRM from Chosen Browser    ${BROWSERTYPE}    ${APPLICATION_URL}
    @{users}     Select a Attribute CRM User
    set suite variable    ${USER}    ${users[0][1]}
    set suite variable    ${PASS}    ${users[0][2]}

Exit Browser
    Close Browser