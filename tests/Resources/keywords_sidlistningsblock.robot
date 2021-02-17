*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Verifies that block is existing and contains a link

    Wait Until Element Is Visible               css:.pagelistblock li a
    ${statusCodeResult}                         check status code       ${URL}
    Should Be True                              ${statusCodeResult}     true
