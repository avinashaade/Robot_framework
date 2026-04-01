*** Settings ***
Resource    ../forms/form-locators.robot
Library    SeleniumLibrary


*** Keywords ***
Open Form Page
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window 

Fill Form Details
    [Arguments]    ${name}    ${email}    ${phone}
    Input Text    ${NAME_FIELD}    ${name}
    Input Text    ${EMAIL_FIELD}    ${email}
    Input Text    ${PHONE_FIELD}    ${phone}

Select Form Options
    Click Element    ${GENDER_MALE}
    Click Element    ${MONDAY_CHECKBOX}
    Click Element    ${SUNDAY_CHECKBOX}

Close Browser Session
    Close All Browsers
    
