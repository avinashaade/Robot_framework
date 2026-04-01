*** Settings ***
Resource      ../resources/forms/form_keywords.robot


*** Test Cases ***
Fill Form Test
    Open Form Page
    Fill Form Details    Avinash    test@test.com    8788888888   
    Select Form Options
    Close Browser Session
    
