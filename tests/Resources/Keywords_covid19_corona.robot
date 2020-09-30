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


End Test
    Close Browser