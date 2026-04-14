*** Settings ***
Library    SeleniumLibrary
Resource    alert_locators.robot

*** Keywords ***
Open Alert Page
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

Handle Alert Popup
    Click Element    ${ALERT_BUTTON}
    Handle Alert    accept

Close Browser Session
    Close All Browsers