*** Settings ***
Documentation
Library  SeleniumLibrary

#General tests for functions used on many pages

*** Keywords ***

Open Page

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}


Test Listen Function

    Click Element               id:speaklink
    Sleep                       2s
    Click Button                id:agreecookie
    Wait Until Page Contains Element  id:insipio_player
    Click Button                id:play50x50
    Wait Until Page Contains Element  id:pause50x50

Verify If Header Menu Is Visible

    Wait Until Element Is Visible           id:main-menu-nav

Verify Sök Function Is Working

    Input Text                              name:q  vård
    Click Element                           xpath:/html/body/div[3]/header/div[6]/div/div/form/button
    Wait Until Page Contains Element        id:search-page


End Test

    Close Browser