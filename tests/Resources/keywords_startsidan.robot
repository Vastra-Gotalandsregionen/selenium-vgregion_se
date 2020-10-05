*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Verify Dropdown Under Aktuellt

    Sleep                                3s
    Mouse Over                           css:#main-menu-nav > ul > li:nth-child(7)
    Wait Until Element Is Visible        css:#main-menu-nav [href="/aktuellt/press/"]

Verify VGR Fokus Links

    Wait Until Element Is Visible        xpath=//a[@href="https://vgrfokus.se/"]
    Wait Until Element Is Visible        xpath=//a[@href="https://vgrfokus.se/2020/10/vgr-fortsatter-minska-kostnaderna-for-inhyrd-personal/"]
    Wait Until Element Is Visible        xpath=//a[@href="https://vgrfokus.se/2020/10/fortsatt-okning-av-covid-19-i-vastra-gotaland-maste-minska-smittspridningen/"]
    Wait Until Element Is Visible        xpath=//a[@href="https://vgrfokus.se/2020/10/beroende-av-datorspel-har-finns-hjalpen/"]
    Wait Until Element Is Visible        xpath=//a[@href="https://vgrfokus.se/2020/09/700-vastsvenskar-kan-ha-oupptackt-cancer/"]
