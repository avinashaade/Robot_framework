*** Settings ***
Library    SeleniumLibrary
Resource   hover_locators.robot

*** Keywords ***
Hover Over Menu
    Wait Until Element Is Visible    ${HOVER_BTN}    10s
    Mouse Over    ${HOVER_BTN}
    Sleep    2s
    Wait Until Element Is Visible    ${DOUBLE_OPTION}    10s

Click Mobile Option
    Click Element    ${DOUBLE_OPTION}

Double Click Copy Button
    Wait Until Element Is Visible    ${COPY_BTN}    10s
    Double Click Element    ${COPY_BTN}

Verify Copy Action
    ${text1}=    Get Value    ${FIELD1}
    ${text2}=    Get Value    ${FIELD2}
    Should Be Equal    ${text1}    ${text2}