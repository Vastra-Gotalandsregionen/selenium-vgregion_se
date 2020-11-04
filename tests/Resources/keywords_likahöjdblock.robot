*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***


Compare Sizes Of Blocks

    Sleep                               1s
    ${width}	${height} =	            Get Element Size	css:#main-content > div.row.content-area-wrapper > div:nth-child(2) > div > div.block.display-option-50.kivpersonblock
    Log                                 ${height}
    Sleep                               1s
    ${width2}	${height2} =	        Get Element Size	css:#main-content > div.row.content-area-wrapper > div:nth-child(2) > div > div.block.display-option-50.pagelistblock
    Log                                 ${height2}
    Sleep                               1s
    Should Be True                      ${height} == ${height2}
    Wait Until Page Contains Element    css:#main-content > div.row.content-area-wrapper > div:nth-child(2)