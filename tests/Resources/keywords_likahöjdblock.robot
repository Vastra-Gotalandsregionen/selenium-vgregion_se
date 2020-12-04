*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***


Compare Sizes Of Blocks

    Wait Until Page Contains Element    css:.equalheightblock__row
    Sleep                               2s
    ${width}    ${height} =             Get Element Size    css:.equalheightblock__row > :nth-child(1)
    Log                                 ${height}
    ${width2}   ${height2} =            Get Element Size    css:.equalheightblock__row > :nth-child(2)
    Log                                 ${height2}
    Should Be True                      ${height} == ${height2}