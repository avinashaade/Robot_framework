*** Settings ***
Resource    ../resources/radio/radio_keywords.robot

*** Test Cases ***
Verify Radio Button Selection
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Select Male Radio
    Verify Male Selected
    Close Browser
    