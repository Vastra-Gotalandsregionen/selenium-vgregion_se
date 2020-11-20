*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Expanderingsblock

    # [Documentation] Compares height between an expanded block and a non expanded block

    Wait Until Element Is Visible       css:button.expand-block__clickable-row
    ${width}    ${height} =             Get Element Size    css:div.expand-block
    Log                                 ${height}
    Sleep                               1s
    Click Element                       css:button.expand-block__clickable-row
    Sleep                               1s
    ${width2}   ${height2} =            Get Element Size    css:div.expand-block
    Log                                 ${height2}
    Should Be True                      ${height} < ${height2}