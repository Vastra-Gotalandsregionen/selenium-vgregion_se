*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Test searchbar With Input
    Sleep                                 1s
    Input Text                            id:SearchQuery      göteborg
    Click Element                         id:SearchButton

Test searchbar Without Input
    Sleep                                 1s
    Click Element                         id:SearchQuery
    Wait Until Page Contain Element       css:.vgr-search-list