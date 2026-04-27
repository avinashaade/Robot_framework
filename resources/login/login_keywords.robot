*** Settings ***
Library    SeleniumLibrary
Resource   ../login/login_locators.robot

*** Keywords ***
Open Login Page
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Login Success
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    10s
    Element Should Contain    ${SUCCESS_MESSAGE}    You logged into a secure area!

Verify Error Message
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    10s
    Element Should Contain     ${ERROR_MESSAGE}   Your username is invalid!

    

Close Browser Session
    Close All Browsers