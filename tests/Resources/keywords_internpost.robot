*** Settings ***
Documentation
Library  SeleniumLibrary
*** Keywords ***

Make Two Unique Searches

    # [Documentation] Tests search bar on page

    Input Text          id:SearchQuery  Allemanshälsan vårdcentral lunden skövde
    Click Button        css:#SearchButton
    Wait Until Page Contains    Allemanshälsan Vårdcentral Lunden Skövde
    Input Text          id:SearchQuery  Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button        css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Make Search With Invalid Input

    # [Documentation] Tests search bar on page with invalid input

    Input Text          id:SearchQuery  wqertr
    Click Button        css:#SearchButton
    Wait Until Page Contains    Din sökning resulterade inte i några träffar.

Test IphoneX Displaysize

    # [Documentation] Tests search bar with iphone browser size

    Set Window Size             375  812
    Input Text                  css:#SearchQuery   Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button        css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Test Ipad Displaysize

    # [Documentation] Tests search bar with ipad browser size

    Set Window Size             768  1024
    Input Text                  css:#SearchQuery   Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button                css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Test GalaxyFold Displaysize

    # [Documentation] Tests search bar with Galaxy Fold browser size

    Set Window Size             280  653
    Input Text                  css:#SearchQuery   Distriktsköterskemottagning, Sjukgymnastik Åmål
    Click Button                css:#SearchButton
    Wait Until Page Contains    Distriktsköterskemottagning, Sjukgymnastik Åmål

Verify Menu Is Still Present IphoneX

    # [Documentation] Tests menu with iphoneX browser size

    Set Window Size             375  812
    Wait Until Page Contains Element    css:#mobile-menu-btn
    Click Button                        css:#mobile-menu-btn
    Wait Until Element Is Visible    class:vgr-mobilemenu__menuwrapper

Verify Sök Is Still Present IphoneX

    # [Documentation] Tests search bar with iphoneX browser size

    Set Window Size             375  812
    Wait Until Page Contains Element    css:#search-btn
    Click Button                        css:#search-btn
    Wait Until Element Is Visible    class:search__form
