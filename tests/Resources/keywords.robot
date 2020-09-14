*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***

Open Page

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}
    Wait Until Page Contains    Internpost
    Input Text 			id:SearchQuery	Allemanshälsan vårdcentral lunden skövde
    Click Button		css:#SearchButton
    Wait Until Page Contains    Allemanshälsan Vårdcentral Lunden Skövde
    Input Text 			id:SearchQuery  Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button		css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål
    Close Browser
