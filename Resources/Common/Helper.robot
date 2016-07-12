*** Settings ***
Library    ExtendedSelenium2Library

*** Keywords ***

Wait And Click
    [Arguments]    ${locator}    ${customTimeout}=5s
    wait until element is visible    ${locator}    ${customTimeout}
    wait until element is enabled    ${locator}    ${customTimeout}
    click element  ${locator}

Wait And Input Text
    [Arguments]    ${locator}    ${text_to_enter}    ${customTimeout}=5s
    wait until element is visible    ${locator}    ${customTimeout}
    wait until element is enabled    ${locator}    ${customTimeout}
    input text    ${locator}    ${text_to_enter}
