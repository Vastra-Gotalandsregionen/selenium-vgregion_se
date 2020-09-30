*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***

Open Page

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}

Make A Search 1

    Input Text                  css:#search     Västra Götalandsregionen satsar på kunskapscentrum i Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Västra Götalandsregionen satsar på kunskapscentrum i Skaraborg
    Wait until Page Contains Element    xpath=//a[@href="https://www.vgregion.se/regional-utveckling/aktuellt-ru/vastra-gotalandsregionen-satsar-pa-kunskapscentrum-i-skaraborg/"]
    Click Link                  xpath=//a[@href="https://www.vgregion.se/regional-utveckling/aktuellt-ru/vastra-gotalandsregionen-satsar-pa-kunskapscentrum-i-skaraborg/"]
    Wait Until Page Contains    Västra Götalandsregionen satsar på kunskapscentrum i Skaraborg

Make A Search 2

    Input Text                  css:#search     Närsjukvårdsteam, södra Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg
    Wait until Page Contains Element    xpath=//a[@href="https://www.vgregion.se/s/skaraborgs-sjukhus/avdelningar-och-mottagningar/narsjukvardsteam-sodra-skaraborg/"]
    Click Link                  xpath=//a[@href="https://www.vgregion.se/s/skaraborgs-sjukhus/avdelningar-och-mottagningar/narsjukvardsteam-sodra-skaraborg/"]
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg

Test Listen Function

    Click Element               id:speaklink
    Sleep                       2s
    Click Button                id:agreecookie
    Wait Until Page Contains Element  id:insipio_player
    Click Button                id:play50x50
    Wait Until Page Contains Element  id:pause50x50

Save Search

    Input Text                  css:#search     Närsjukvårdsteam, södra Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg
    Click Element               id:save-search
    Click Link                  xpath=//a[@href="/sparade-sokningar/"]
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg

End Test

    Close Browser