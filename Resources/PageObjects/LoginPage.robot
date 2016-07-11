*** Settings ***
Resource    ../../Configs/init.robot
Library     ExtendedSelenium2Library


*** Keywords ***
LoginPage.Login to Website
    [Arguments]    ${BROWSERTYPE}    ${APPLICATION_URL}
    Launch URL from Chosen Browser  ${BROWSERTYPE}    ${APPLICATION_URL}