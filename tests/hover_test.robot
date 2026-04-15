*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/hover/hover_keywords.robot

*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Verify Mouse Hover Functionality
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Hover Over Menu
    Click Mobile Option
    Close Browser

Verify Double Click Functionality
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Double Click Copy Button
    Verify Copy Action
    Close Browser