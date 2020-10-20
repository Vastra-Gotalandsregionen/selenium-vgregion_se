*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Verify Dropdown Under Aktuellt

    [Documentation] Verifies if dropdown under "Aktuellt" is visible while mouse hovering over it

    Sleep                                3s
    Mouse Over                           css:#main-menu-nav > ul > li:nth-child(7)
    Wait Until Element Is Visible        css:#main-menu-nav [href="/aktuellt/press/"]

Verify VGR Fokus Links

    [Documentation] Verifies that following links are visible on page

    Wait Until Element Is Visible        xpath=//a[@href="https://vgrfokus.se/"]
    Wait Until Element Is Visible        css:#main-content > div:nth-child(4) > div.block.display-option-33.rssreaderblock > div > div:nth-child(2)
    Wait Until Element Is Visible        css:#main-content > div:nth-child(4) > div.block.display-option-33.rssreaderblock > div > div:nth-child(3)
