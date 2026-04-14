*** Settings ***
Library    SeleniumLibrary
Resource    radio_locators.robot

*** Keywords ***
Select Male Radio
    Click Element    ${MALE_RADIO}

Verify Male Selected
    Element Should Be Visible    ${MALE_RADIO}

    