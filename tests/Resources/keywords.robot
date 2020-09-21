*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***

Open Page

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}
    Wait Until Page Contains    Internpost

Make Two Unique Searches
    Input Text 			id:SearchQuery	Allemanshälsan vårdcentral lunden skövde
    Click Button		css:#SearchButton
    Wait Until Page Contains    Allemanshälsan Vårdcentral Lunden Skövde
    Input Text 			id:SearchQuery  Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button		css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Make Search With Invalid Input
    Input Text 			id:SearchQuery	wqertr
    Click Button		css:#SearchButton
    Wait Until Page Contains    Din sökning resulterade inte i några träffar.

Test IphoneX Displaysize
    Set Window Size             375  812
    Input Text                  css:#SearchQuery   Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button		css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Test Ipad Displaysize
    Set Window Size             768  1024
    Input Text                  css:#SearchQuery   Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button		css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Test GalaxyFold Displaysize
    Set Window Size             280  653
    Input Text                  css:#SearchQuery   Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button		css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål



End Test
    Close Browser
