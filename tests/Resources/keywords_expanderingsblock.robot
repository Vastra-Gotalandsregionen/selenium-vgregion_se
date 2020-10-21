*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Expanderingsblock

    Wait Until Element Is Visible       css:#main-content > div.row.content-area-wrapper > div.block.display-option-100.expandedblock > div > div > button
    ${width}	${height} =	            Get Element Size	css:#main-content > div.row.content-area-wrapper > div.block.display-option-100.expandedblock > div
    Log                                 ${height}
    Sleep                               1s
    Click Element                       css:#main-content > div.row.content-area-wrapper > div.block.display-option-100.expandedblock > div > div > button
    Sleep                               1s
    ${width2}	${height2} =	        Get Element Size	css:#main-content > div.row.content-area-wrapper > div.block.display-option-100.expandedblock > div
    Log                                 ${height2}
    Should Be True                      ${height} < ${height2}