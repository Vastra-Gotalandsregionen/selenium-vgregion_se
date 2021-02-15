*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Verifies that block is existing and isnt empty

    Wait Until Element Is Visible               css:.pagelistblock
    ${elementsinblocks} =                       Get Element Count    css:.pagelistblock
    Log                                         ${elementsinblocks}
    Should Be True                              ${elementsinblocks} > 0
