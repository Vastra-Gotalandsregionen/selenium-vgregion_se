*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Use Analysis Search

    # [Documentation]     Tests search function "Analyslista och provtagningsanvisningar"

    Input Text                      css:#SearchQuery                    Mässling
    Click Element                   css:#SearchButton
    Sleep                           2s
    Wait Until Element Contains     css:.searchresultpagelistblock      Mässling

Use Empty String in Search
    Click Element                   css:#SearchButton
    ${SearchResultAmount}           Get Element Count                   css:.searchresultpagelistblock a
    Should Be True                  ${SearchResultAmount} > 6000 #Sic!

Use Select to Filter Query
    Press Keys                      css:.vgr-search__select              ARROW_DOWN  ARROW_DOWN  ENTER
    Click Element                   css:#SearchButton
    Sleep                           2s
    ${SearchResultAmount} =         Get Element Count                   css:.searchresultpagelistblock dd
    ${SearchResultTagsAmount} =     Get Element Count                   css:[href~="Laboratorium_Klinisk kemi"]
    Should Be Equal                 ${SearchResultTagsAmount}           ${SearchResultTagsAmount}