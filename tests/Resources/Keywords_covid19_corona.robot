*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  checkStatusCode.py

*** Keywords ***


Test Link Smittskydd Västra Götalands information till allmänheten

    # [Documentation]     Check that link to "information for the public" works

    Sleep                                   2s
    Click Link                              xpath=//a[@href="/halsa-och-vard/vardgivarwebben/vardriktlinjer/smittskydd-vastra-gotaland/coronavirus-2019-ncov-information-till-allmanhet/"]
    ${PageTitle} =                          Get Title
    Should Contain                          ${PageTitle}               information till allmänheten


Test Link Folkhälsomyndighetens information till allmänheten

    # [Documentation]     Check that link to the FHM works

    Sleep                                   2s
    Click Link                              xpath=//a[@href="https://www.folkhalsomyndigheten.se/smittskydd-beredskap/utbrott/aktuella-utbrott/covid-19/fragor-och-svar/"]
    ${PageTitleFhm} =                       Get Title
    Should Contain                          ${PageTitleFhm}               covid-19

