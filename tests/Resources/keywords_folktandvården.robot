*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Use Hitta Klinik
    Input Text                          css:#SearchQuery        Specialistkliniken för endodonti Göteborg
    Click Element                       css:#SearchButton
    Sleep                               1s
    Wait Until Page Contains            Specialistkliniken för endodonti Göteborg

Use Hitta Klinik With Filters
    Input Text                          css:#SearchQuery        Specialistkliniken för endodonti Göteborg
    #Cant get css for filter element to work
    #Click Element                       css:[class="vgr-toggle__button vgr-search__expandtoggle"][aria-controls="2e1a40f6-6eda-45bb-8093-c05a83a515a1"]
    Click Element                       css:#SelectedMunicipality
    #Click Element                       css:#SelectedMunicipality > option:nth-child(13)
    Press Keys                          id:#SelectedMunicipality  g  ö  t  e  b
    Press Keys                          id:#SelectedMunicipality  ENTER
    #Click Element                       css:#SearchButton
    Sleep                               1s
    #Wait Until Page Contains            Specialistkliniken för endodonti Göteborg