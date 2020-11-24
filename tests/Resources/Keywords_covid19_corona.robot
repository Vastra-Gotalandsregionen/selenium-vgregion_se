*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  checkStatusCode.py

*** Keywords ***


Test Link Smittskydd Västra Götalands information till allmänheten

    # [Documentation]     Tests link to verify that status code is 200

    Sleep                                   5s
    Click Link                              xpath=//a[@href="/halsa-och-vard/vardgivarwebben/vardriktlinjer/smittskydd-vastra-gotaland/coronavirus-2019-ncov-information-till-allmanhet/"]
    Sleep                                   1s
    ${statusCodeResult}                     check status code     ${URL}
    Log To Console                          ${statusCodeResult}          console=yes
    Should Be True                          ${statusCodeResult}   'true'

Test Link Folkhälsomyndighetens information till allmänheten

    # [Documentation]     Tests link to verify that status code is 200

    Sleep                                   2s
    Click Link                              xpath=//a[@href="https://www.folkhalsomyndigheten.se/smittskydd-beredskap/utbrott/aktuella-utbrott/covid-19/fragor-och-svar/"]
    Sleep                                   1s
    ${statusCodeResult2}                    check status code      ${URL}
    Log To Console                          ${statusCodeResult2}          console=yes
    Should Be True                          ${statusCodeResult2}   'true'

