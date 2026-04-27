*** Settings ***
Resource    ../resources/login/login_keywords.robot
Variables   ../variables/test_data.py

*** Test Cases ***
Valid Login Test
    Open Login Page
    Enter Username    ${USERNAME}
    Enter Password    ${PASSWORD}
    Click Login Button
    Verify Login Success
    Close Browser Session


Invalid Login Test
    Open Login Page
    Enter Username    wrong
    Enter Password    wrong
    Click Login Button
    Verify Error Message
    Close Browser Session

Invalid Password Valid Username Test
    Open Login Page
    Enter Username    ${USERNAME}
    Enter Password    invalidpassword
    Click Login Button
    Verify Invalid Password Error
    Close Browser Session

Valid Password Invalid Username Test
    Open Login Page
    Enter Username    invaliduser
    Enter Password    ${PASSWORD}
    Click Login Button
    Verify Error Message
    Close Browser Session