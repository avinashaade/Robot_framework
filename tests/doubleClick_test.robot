*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Verify Double Click Action
    Open Double Click Page
    Perform Double Click Action
    Close Browser

*** Keywords ***
Open Double Click Page
    Open Browser    https://demoqa.com/buttons    chrome
    Maximize Browser Window

Perform Double Click Action
    Double Click Element    css:#doubleClickBtn