*** Settings ***
Library        ExtendedSelenium2Library

*** Keywords ***
Launch URL from Chosen Browser
    [Arguments]    ${BROWSERTYPE}    ${APPLICATION_URL}
    Open Browser    url=${APPLICATION_URL}    browser=${BROWSERTYPE}
    Maximize Browser Window
