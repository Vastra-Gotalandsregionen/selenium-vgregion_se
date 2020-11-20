*** Settings ***
Documentation
Library  SeleniumLibrary
Library  String

*** Keywords ***

Test searchbar With Input

    Input Text                              id:search       vård
    Click Element                           id:search-button
    Sleep                                   2s
    Wait Until Page Contains Element        css:[class="file pdf search-result-item"]
    ${searchresultnumber} =                 Get Text     css:.results
    Log                                     ${searchresultnumber}
    ${searchresultnumber} =                 Remove String        ${searchresultnumber}   Din sökning gav följande träffar: 195 i Regionövergripande,      i Hela regionen, 425 i Vårdhandboken
    ${searchresultnumber} =                 Convert To Number  ${searchresultnumber}
    Log                                     ${searchresultnumber}
    Click Element                           id:select-1
    Click Element                           css:#select-1 > optgroup:nth-child(2) > option:nth-child(1)
    CLick Element                           css:[class="filter-submit button"][value="Sök med filter"]
    Sleep                                   2s
    Wait Until Page Contains Element        css:[class="file pdf search-result-item"]
    Sleep                                   1s
    ${searchresultnumber2} =                Get Text     css:.results
    Log                                     ${searchresultnumber2}
    ${searchresultnumber2} =                Remove String        ${searchresultnumber2}   Din sökning gav följande träffar: 195 i Regionövergripande,      i Hela regionen, 425 i Vårdhandboken
    ${searchresultnumber2} =                Convert To Number  ${searchresultnumber2}
    Log                                     ${searchresultnumber2}
    Should Be True                          ${searchresultnumber2} < ${searchresultnumber}
    Should Be True                          0 < ${searchresultnumber}

Test searchbar Without Input

    Click Element                           id:search-button
    Sleep                                   2s
    Wait Until Page Contains Element        css:[class="file pdf search-result-item"]
