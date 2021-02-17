*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Verifies that block is existing, contains a link and check statusCode.

    Wait Until Element Is Visible               css:.pagelistblock li a
    ${statusCodeResult}                         check status code       ${URL}
    Should Be True                              ${statusCodeResult}     true
