*** Settings ***
Resource    ../../Configs/init.robot
Library     ExtendedSelenium2Library

*** Variables ***
${INPUT_LoginPage_UserName}    id=user_name
${INPUT_LoginPage_Password}    id=user_password
${BUTTON_LoginPage_LogIn}      id=login_button

*** Keywords ***
LoginPage.Log Into CRM Application
    [Arguments]    ${user}    ${pass}
    Input Text        ${INPUT_LoginPage_UserName}    ${user}
    Input Password    ${INPUT_LoginPage_Password}    ${pass}
    Click Button      ${BUTTON_LoginPage_LogIn}


