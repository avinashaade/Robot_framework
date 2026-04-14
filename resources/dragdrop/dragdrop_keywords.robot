*** Settings ***
Library    SeleniumLibrary
Resource    dragdrop_locators.robot

*** Keywords ***
Open Drag Drop Page
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

Perform Drag And Drop
    Drag And Drop    ${SOURCE_ELEMENT}    ${TARGET_ELEMENT}

Verify Drop Successful
    Element Text Should Be    ${TARGET_ELEMENT}    Dropped!

Close Browser Session
    Close All Browsers 

    