*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Check KIV Block Visibility

    # [Documentation] Verifies visibility of KIV block

    Wait Until Element Is Visible       css:[href="mailto:jenny.erkholm@vgregion.se"]
    Wait Until Element Is Visible       css:[href="tel:070-2484554"]