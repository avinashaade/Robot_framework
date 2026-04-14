*** Settings ***
Resource    ../resources/alerts/alert_keywords.robot

*** Test Cases ***
Verify Alert Handling
    Open Alert Page
    Handle Alert Popup
    Close Browser