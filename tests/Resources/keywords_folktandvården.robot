*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Use Hitta Klinik

    # [Documentation]     Tests search function "Hitta Klinik"

    Input Text                          css:#SearchQuery        Specialistkliniken för endodonti Göteborg
    Click Element                       css:#SearchButton
    Sleep                               2s
    Wait Until Page Contains            Specialistkliniken för endodonti Göteborg

Use Hitta Klinik With Filters

    # [Documentation] Tests search function "Hitta Klinik" with filters

    Input Text                          css:#SearchQuery        Specialistkliniken för endodonti Göteborg
    # Click to close auto suggestions
    Click Element                       css:.organizationsearchcontrolblock .block__heading
    Sleep                               1s
    Click Element                       css:.vgr-search__expandtoggle
    Sleep                               1s
    Click Element                       css:#SelectedMunicipality
    Sleep                               1s
    Click Element                       xpath=//select/option[@value="1480"]
    Sleep                               1s
    Press Keys                          css:#SelectedMunicipality  ENTER
    Click Element                       css:#offer-check-4
    Click Element                       css:#SearchButton
    Sleep                               1s
    Wait Until Page Contains            Specialistkliniken för endodonti Göteborg