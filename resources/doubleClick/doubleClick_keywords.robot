*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DOUBLE_CLICK_BUTTON}    id=double-click

*** Keywords ***
Open Double Click Page
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

Perform Double Click Action
    Double Click Element    ${DOUBLE_CLICK_BUTTON}

Close Browser
    Close All Browsers