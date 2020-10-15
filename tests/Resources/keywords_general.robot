*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  checkStatusCode.py
Library    Collections
#General tests for functions used on many pages

*** Keywords ***

Open Page

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}


Test Listen Function

    Click Element               id:speaklink
    Sleep                       2s
    Click Button                id:agreecookie
    Wait Until Page Contains Element  id:insipio_player
    Click Button                id:play50x50
    Wait Until Page Contains Element  id:pause50x50

Verify If Header Menu Is Visible

    Wait Until Element Is Visible           id:main-menu-nav

Verify Sök Function Is Working

    Input Text                              name:q  vård
    Click Element                           css:.vgr-button.search__button
    Wait Until Page Contains Element        id:search-page


Get All Links And Return Response Code
    [Tags]    Links
    ${AllLinksCount} =    Get Element Count    //a
    Log    ${AllLinksCount}
    @{LinkItems}    Create List
     FOR    ${INDEX}    IN RANGE    1    ${AllLinksCount}
        Log    ${INDEX}
        ${lintext}=    Get Text    xpath=(//a)[${INDEX}]
        Log    ${lintext}
        ${linklength}    Get Length    ${lintext}
        Run Keyword If    ${linklength}>1    Append To List    ${LinkItems}    ${lintext}
     END
    ${LinkSize}=    Get Length    ${LinkItems}
    Log    ${LinkSize}
     FOR    ${ELEMENT}    IN    @{LinkItems}
        Log    ${ELEMENT}
     ${statusCodeResult}                     check status code     ${URL}
    Log                          ${statusCodeResult}
    Should Be True                          ${statusCodeResult}   'true'
     END



End Test

    Close Browser