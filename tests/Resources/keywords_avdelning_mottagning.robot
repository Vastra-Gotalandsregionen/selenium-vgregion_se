*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Expandera Kontaktblock Test

    ${width}    ${height} =             Get Element Size    css:.kivcontact__column-container
    Sleep                               1s
    Click Element                       css:.kivcontact__expandrow
    Sleep                               1s
    ${width2}   ${height2} =            Get Element Size    css:.kivcontact__column-container
    Should Be True                      ${height} < ${height2}

Test Flikar

    Wait Until Element Contains         css:.vgr-tabs__heading    VÅRD OCH HÄLSA
    Sleep                               1s
    Click Element                       css:#main-content > div > div.department-wrapper > div.main-wrapper.department-three > div:nth-child(7) > div > div.vgr-tabs__bar > ul > li:nth-child(2)
    Wait Until Element Contains         css:#tab-2 > div > div > div > div > div > div.block__header    BESÖK HOS OSS
    Sleep                               1s
    Click Element                       css:#main-content > div > div.department-wrapper > div.main-wrapper.department-three > div:nth-child(7) > div > div.vgr-tabs__bar > ul > li:nth-child(3)
    Wait Until Element Contains         css:#tab-3 > div > div > div > div > div > div.block__header > h2   VÄLJ VÅR VÅRDCENTRAL

Test Kontaktuppgifter Block Info Is Correct

    Click Element                       css:.kivcontact__column-container
    Wait Until Element Contains         css:.kivcontact__column-container   031
    Wait Until Element Contains         css:.kivcontact__column-container   måndag
    Wait Until Element Contains         css:.kivcontact__column-container   måndag
    Wait Until Element Contains         css:.kivcontact__column-container   Halmtorget 1

Test Sjuk Kväll Eller Helg First In List

    Wait Until Page Contains Element    css:.dropdownblock
    Click Element                       css:#form0 select
    Press Keys                          css:#form0 select      ARROW_DOWN
    Press Keys                          css:#form0 select     ENTER
    Click Element                       css:#form0 > div > input
    Sleep                               2s
    ${statusCodeResult2}                check status code      ${URL}
    Log To Console                      ${statusCodeResult2}          console=yes
    Should Be True                      ${statusCodeResult2}   'true'

Test Sjuk Kväll Eller Helg Second In List

    Wait Until Page Contains Element    css:#main-content > div > div.department-wrapper > div.right-column.department-two > div:nth-child(1) > div
    Click Element                       css:#form0 > div > div
    Press Keys                          css:#form0 > div > div      ARROW_DOWN
    Press Keys                          css:#form0 > div > div      ARROW_DOWN
    Press Keys                          css:#form0 > div > div      ENTER
    Click Element                       css:#form0 > div > input
    Sleep                               2s
    ${statusCodeResult2}                check status code      ${URL}
    Log To Console                      ${statusCodeResult2}          console=yes
    Should Be True                      ${statusCodeResult2}   'true'