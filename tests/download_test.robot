*** Settings ***
Resource    ../resources/downloads/download_keywords.robot

*** Test Cases ***
Verify Download Text File From Webpage
    Open Download Page
    Scroll To Footer
    Enter Message    Test Message
    Click Generate File
    Click Download File
    Verify File Downloaded
    Close Browser Session