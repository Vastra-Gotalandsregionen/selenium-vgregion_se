*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Expanderingsblock-aria

    #[Documentation] Check if aria-expanded is true
    Wait Until Element Is Visible       css:button.expand-block__clickable-row
    Sleep                               1s
    Click Element                       css:button.expand-block__clickable-row
    Sleep                               1s
    ${aria-expanded}                    Get Element Attribute          css:button.expand-block__clickable-row  aria-expanded
    Log                                 ${aria-expanded}
    Should be Equal                     ${aria-expanded}               true