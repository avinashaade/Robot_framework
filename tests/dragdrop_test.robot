*** Settings ***
Resource    ../resources/dragdrop/dragdrop_keywords.robot

*** Test Cases ***
Drag And Drop Test
    Open Drag Drop Page
    Perform Drag And Drop
    Verify Drop Successful
    Close Browser 