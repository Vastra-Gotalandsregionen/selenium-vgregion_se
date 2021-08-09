*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Check KIV Block Visibility

    # [Documentation] Verifies visibility of KIV block

    Wait Until Element Is Visible       css:[href="mailto:ann-sofi.lodin@vgregion.se"]
    Wait Until Element Is Visible       css:[href="tel:010-4410160"]