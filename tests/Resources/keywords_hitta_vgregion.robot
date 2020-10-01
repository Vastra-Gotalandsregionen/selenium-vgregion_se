*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***

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


Save Search

    Input Text                  css:#search     Närsjukvårdsteam, södra Skaraborg
    Click Element               css:#search-button
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg
    Click Element               id:save-search
    Click Link                  xpath=//a[@href="/sparade-sokningar/"]
    Wait Until Page Contains    Närsjukvårdsteam, södra Skaraborg
