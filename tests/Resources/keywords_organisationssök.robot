*** Settings ***
Documentation
Library  SeleniumLibrary
Library  String

*** Keywords ***

Compare Searchbar With And Without Filters

    Click Element               id:SearchButton
    Sleep                                   1s
    ${searchresultnumber} =     Get Text     css:.vgr-search-details__heading
    Log                         ${searchresultnumber}
    ${searchresultnumber} =     Remove String        ${searchresultnumber}   Din sökning genererade      träffar
    ${searchresultnumber} =     Convert To Number  ${searchresultnumber}
    Log                         ${searchresultnumber}
    Sleep                       2s
    Click Element               css:#main-content > div.row.content-area-wrapper > div.block.display-option-100.organizationsearchcontrolblock > div > div.vgr-search.vgr-toggle > button
    Sleep                       1s
    Click Element               css:#SelectedMunicipality
    Sleep                       1s
    Click Element               css:#SelectedMunicipality > option:nth-child(13)
    Click Element               id:SearchButton
    Sleep                                   3s
    ${searchresultnumber2} =    Get Text     css:.vgr-search-details__heading
    Log                         ${searchresultnumber2}
    ${searchresultnumber2} =    Remove String        ${searchresultnumber2}   Din sökning genererade      träffar
    ${searchresultnumber2} =    Convert To Number  ${searchresultnumber2}
    Log                         ${searchresultnumber2}
    Should Be True              ${searchresultnumber2} < ${searchresultnumber}
    Should Be True              0 < ${searchresultnumber}