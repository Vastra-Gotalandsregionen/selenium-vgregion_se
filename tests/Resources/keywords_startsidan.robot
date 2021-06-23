*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Verify Dropdown Under Aktuellt

    # [Documentation] Verifies if dropdown under "Aktuellt" is visible while mouse hovering over it

    Set Window Size                      1400  1000
    Sleep                                3s
    Mouse Over                           css:#main-menu-nav [href="/aktuellt/"]
    Wait Until Element Is Visible        css:#main-menu-nav [href="/aktuellt/press/"]

Verify VGR Fokus Links

    # [Documentation] Verifies that following links are visible on page

    Wait Until Element Is Visible        css:.rssfeed [href="https://vgrfokus.se/"]
    Wait Until Element Is Visible        css:.rssfeed li:nth-of-type(5) a
