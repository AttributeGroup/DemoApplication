*** Settings ***
Library     ExtendedSelenium2Library
Resource    ../Resources/PageObjects/LoginPage.robot
Resource    ../Configs/Default.robot
Suite Teardown     Exit Browser

*** Test Cases ***
SmokeTest - Login
    LoginPage.Login to Website    ${BROWSERTYPE}    ${APPLICATION_URL}

*** Keywords ***
Exit Browser
    close browser