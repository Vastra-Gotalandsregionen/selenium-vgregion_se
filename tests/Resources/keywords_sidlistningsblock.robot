*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Verifies that block is existing and isnt empty

    Wait Until Element Is Visible               css:div.block.display-option-100.pagelistblock
    ${elementsinblocks} =                       Get Element Count    css:div.block.display-option-100.pagelistblock
    Log                                         ${elementsinblocks}
    Should Be True                              ${elementsinblocks} > 0
