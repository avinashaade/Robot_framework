*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***

Select From Dropdown Test
    Open Browser    https://the-internet.herokuapp.com/dropdown    chrome
    Maximize Browser Window
    Select From List By Label    id=dropdown    Option 1
    Sleep    3s
    Close Browser