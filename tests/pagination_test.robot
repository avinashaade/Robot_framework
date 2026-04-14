*** Settings ***
Resource    ../resources/webtables/pagination_keywords.robot

*** Test Cases ***
Pagination Navigation Test
    Open Pagination Page
    Verify Table Visible
    Click Page 2
    Verify Table Visible
    Click Page 3
    Verify Table Visible
    Close Browser Session

Select Checkbox From Table Test
    Open Pagination Page
    Select First Checkbox
    Close Browser