*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Verifies that block is existing and isnt empty

    Wait Until Element Is Visible               css:#main-content > div.row.content-area-wrapper > div > div > div
    Wait Until Element Is Visible               css:#main-content > div.row.content-area-wrapper > div > div > div > ul > li:nth-child(1)
    ${elementsinblocks} =                       Get Element Count    css:[class="block__row media "]
    Log                                         ${elementsinblocks}
    Should Be True                              ${elementsinblocks} > 0