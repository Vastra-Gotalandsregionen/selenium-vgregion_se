*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Check Dropdown Ta Kontakt Med Webbansvarig Här

    Sleep                           1s
    Click Button                      css:#contactForm > button
    Sleep                           1s
    Wait Until Element Is Visible     css:#contactForm [href="https://www.1177.se/Vastra-Gotaland/hitta-vard/"]
    Wait Until Element Is Visible     css:#contactForm ul > li.vgr-toggle.vgr-toggle-content__item > button