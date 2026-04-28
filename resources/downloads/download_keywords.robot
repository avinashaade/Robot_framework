*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn
Library    Collections
Resource   download_locators.robot

*** Variables ***
${DOWNLOAD_DIR}     ${EXECDIR}${/}downloads
${DOWNLOAD_PATH}    ${DOWNLOAD_DIR}${/}info.txt

*** Keywords ***

Open Download Page
    ${download_dir}=    Normalize Path    ${DOWNLOAD_DIR}

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    ${prefs}=    Create Dictionary
    ...    download.default_directory=${download_dir}
    ...    download.prompt_for_download=${False}
    ...    download.directory_upgrade=${True}
    ...    safebrowsing.enabled=${True}

    Call Method    ${options}    add_experimental_option    prefs    ${prefs}

    Create WebDriver    Chrome    options=${options}
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window


Scroll To Footer
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    ${Link}
    Wait Until Element Is Visible    ${TEXT_AREA}    10s


Enter Message
    [Arguments]    ${msg}
    Input Text    ${TEXT_AREA}    ${msg}


Click Generate File
    Click Element    ${dOWNLOAD_BUTTON}


Click Download File
    Wait Until Element Is Visible    ${DOWNLOAD_LINK}    10s
    Click Element    ${DOWNLOAD_LINK}


Verify File Downloaded
    Wait Until Keyword Succeeds    15s    2s    File Should Exist    ${DOWNLOAD_PATH}


Delete Existing File If Present
    Run Keyword And Ignore Error    Remove File    ${DOWNLOAD_PATH}


Close Browser Session
    Close All Browsers