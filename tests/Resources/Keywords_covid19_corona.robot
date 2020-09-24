*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***

Open Page

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}


Test Link Smittskydd Västra Götalands information till allmänheten

    Sleep                       5s
    Click Element               xpath:/html/body/div[3]/div[4]/div/main/div[1]/div[1]/div/div/p[2]/a[1]
    Wait Until Page Contains    Coronavirus 2019-nCoV Information till allmänhet
    Wait until Page Contains    Infektion orsakad av coronavirus (covid-19) information till allmänheten

Test Link Folkhälsomyndighetens information till allmänheten

    Sleep                       2s
    Click Element               xpath:/html/body/div[3]/div[4]/div/main/div[1]/div[1]/div/div/p[2]/a[2]
    Wait Until Page Contains    Frågor och svar om covid-19 (coronavirus)

Verify If Educational Video Appears

    Wait Until Element Is Visible   xpath:/html/body/div[3]/div[4]/div/main/div[1]/div[1]/div/div/div/iframe

Verify If Header Menu Is Visible

    Wait Until Element Is Visible   id:main-menu-nav

Verify Sök Function From Header Is Visible

    Wait Until Element Is Visible   xpath:/html/body/div[3]/header/div[6]/div/div/form/label/input
    Wait Until Element Is Visible   xpath:/html/body/div[3]/header/div[6]/div/div/form/button

Verify Sök Function Is Working

    Input Text                      xpath:/html/body/div[3]/header/div[6]/div/div/form/label/input  vård
    Click Element                   xpath:/html/body/div[3]/header/div[6]/div/div/form/button
    Wait Until Page Contains Element    id:search-page


End Test
    Close Browser