*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  checkStatusCode.py

*** Keywords ***


Test Link Smittskydd Västra Götalands information till allmänheten

    Sleep                                   5s
    Click Link                              xpath=//a[@href="/halsa-och-vard/vardgivarwebben/vardriktlinjer/smittskydd-vastra-gotaland/coronavirus-2019-ncov-information-till-allmanhet/"]
    ${statusCodeResult}                     check status code     ${URL}
    Log To Console                          ${statusCodeResult}          console=yes
    Should Be True                          ${statusCodeResult}   'true'

Test Link Folkhälsomyndighetens information till allmänheten

    Sleep                                   2s
    Click Link                              xpath=//a[@href="https://www.folkhalsomyndigheten.se/smittskydd-beredskap/utbrott/aktuella-utbrott/covid-19/fragor-och-svar/"]
    ${statusCodeResult2}                    check status code      ${URL}
    Log To Console                          ${statusCodeResult2}          console=yes
    Should Be True                          ${statusCodeResult2}   'true'

Verify If Educational Video Appears

    Sleep                                   5s
    Wait Until Page Contains Element        xpath://*[@id="player"]

