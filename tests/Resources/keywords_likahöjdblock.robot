*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***


Compare Sizes Of Blocks

    Set Window Size                     1400  1000
    Wait Until Page Contains Element    css:.equalheightblock__row
    Sleep                               2s
    ${width}    ${height} =             Get Element Size    css:.equalheightblock__row > :nth-child(1)
    ${width2}   ${height2} =            Get Element Size    css:.equalheightblock__row > :nth-child(2)
    Should Be True                      ${height} == ${height2}