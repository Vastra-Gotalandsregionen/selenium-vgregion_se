*** Settings ***
Documentation
Library  SeleniumLibrary
Library  String
*** Keywords ***

Make A Search 1

    # [Documentation] Tests search bar on page

    Input Text                  css:#search     Västra Götalandsregionen satsar på kunskapscentrum i Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Västra Götalandsregionen satsar på kunskapscentrum i Skaraborg
    Wait until Page Contains Element    xpath=//a[@href="https://www.vgregion.se/regional-utveckling/aktuellt-ru/vastra-gotalandsregionen-satsar-pa-kunskapscentrum-i-skaraborg/"]
    Click Link                  xpath=//a[@href="https://www.vgregion.se/regional-utveckling/aktuellt-ru/vastra-gotalandsregionen-satsar-pa-kunskapscentrum-i-skaraborg/"]
    Wait Until Page Contains    Västra Götalandsregionen satsar på kunskapscentrum i Skaraborg

Make A Search 2

    # [Documentation] Tests search bar on page

    Input Text                  css:#search     Närsjukvårdsteam, södra Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg
    Wait until Page Contains Element    xpath=//a[@href="https://www.vgregion.se/s/skaraborgs-sjukhus/avdelningar-och-mottagningar/narsjukvardsteam-sodra-skaraborg/"]
    Click Link                  xpath=//a[@href="https://www.vgregion.se/s/skaraborgs-sjukhus/avdelningar-och-mottagningar/narsjukvardsteam-sodra-skaraborg/"]
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg


Save Search

    # [Documentation] Tries to save a search and view it on page "Sparade Sökningar"

    Input Text                  css:#search     Närsjukvårdsteam, södra Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg
    Click Element               id:save-search
    Click Link                  xpath=//a[@href="/sparade-sokningar/"]
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg

Compare Filter Results

    # [Documentation] Tests search results with input in relation to results with input and filters. Should be only input>input+filters.

    Input Text                  css:#search     vård
    Click Element               css:#search-button
    ${searchresultnumber} =     Get Text     css:#ul-group li:first-child .group__item + span
    Log                         ${searchresultnumber}
    ${searchresultnumber} =     Remove String        ${searchresultnumber}   (    )
    ${searchresultnumber} =     Convert To Number  ${searchresultnumber}
    Log                         ${searchresultnumber}
    Sleep                       2s
    Click Element               id:select-3
    Sleep                       1s
    Press Keys                  id:select-3  ARROW_DOWN
    Sleep                       1s
    Press Keys                  id:select-3  ENTER
    Click Element               css:.filter-submit.button
    ${searchresultnumber2} =    Get Text     css:#ul-group li:first-child .group__item + span
    Log                         ${searchresultnumber2}
    ${searchresultnumber2} =    Remove String        ${searchresultnumber2}   (    )
    ${searchresultnumber2} =    Convert To Number  ${searchresultnumber2}
    Log                         ${searchresultnumber2}
    Should Be True              ${searchresultnumber2} < ${searchresultnumber}
    Should Be True              0 < ${searchresultnumber}