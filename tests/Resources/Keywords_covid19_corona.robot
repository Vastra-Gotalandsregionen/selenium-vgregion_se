*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  C:\\Users\\abram\\Vgr\\selenium-vgregion_se\\tests\\checkStatusCode.py
*** Keywords ***

Open Page

    Open Browser                            about:blank     ${BROWSER}
    Go To                                   ${URL}


Test Link Smittskydd Västra Götalands information till allmänheten

    Sleep                                   5s
    Click Link                              xpath=//a[@href="/halsa-och-vard/vardgivarwebben/vardriktlinjer/smittskydd-vastra-gotaland/coronavirus-2019-ncov-information-till-allmanhet/"]
    Run Process                             python        checkStatusCode.py   checkStatusCode()    alias=statuscode
    ${statusCodeResult} =                   Get Process Result                      statuscode
    Log                                     Hejsan
    Log To Console                          ${statusCodeResult.stdout}          console=yes
    Should Be Equal As Integers             ${statusCodeResult.stdout}   True

Test Link Folkhälsomyndighetens information till allmänheten

    Sleep                                   2s
    Click Link                              xpath=//a[@href="https://www.folkhalsomyndigheten.se/smittskydd-beredskap/utbrott/aktuella-utbrott/covid-19/fragor-och-svar/"]


Verify If Educational Video Appears

    Sleep                                   5s
    Wait Until Page Contains Element        xpath://*[@id="player"]

Verify If Header Menu Is Visible

    Wait Until Element Is Visible           id:main-menu-nav

Verify Sök Function From Header Is Visible

    Wait Until Element Is Visible           class:vgr-button search__button
    Wait Until Element Is Visible           class:search-input-box search__field

Verify Sök Function Is Working

    Input Text                              xpath:/html/body/div[3]/header/div[6]/div/div/form/label/input  vård
    Click Element                           xpath:/html/body/div[3]/header/div[6]/div/div/form/button
    Wait Until Page Contains Element        id:search-page


End Test
    Close Browser