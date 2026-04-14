*** Settings ***
Library    SeleniumLibrary
Resource    pagination_locators.robot

*** Keywords ***
Open Pagination Page
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

Click Page 2
    Click Element    ${NEXT_PAGE_2}

Click Page 3
    Click Element    ${NEXT_PAGE_3}

Select First Checkbox
    Click Element    ${CHECKBOX_FIRST}

Verify Table Visible
    Element Should Be Visible    ${TABLE_ROWS}

Close Browser Session
    Close All Browsers