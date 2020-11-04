*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Check KIV Block Visibility

    # [Documentation] Verifies visibility of KIV block

    Wait Until Element Is Visible       css:#main-content > div.row.content-area-wrapper > div > div > div:nth-child(1) > div
    Wait Until Element Contains         css:#main-content > div.row.content-area-wrapper > div > div > div:nth-child(1) > div       Ann-Sofi Lodin
    Wait Until Element Contains         css:#main-content > div.row.content-area-wrapper > div > div > div:nth-child(1) > div       E-post
    Wait Until Element Contains         css:#main-content > div.row.content-area-wrapper > div > div > div:nth-child(1) > div       ann-sofi.lodin@vgregion.se


Check KIV Block Visibility 2

    # [Documentation] Verifies visibility of KIV block

    Go To                               https://www.sahlgrenska.se/omraden/omrade-6/medicin2/enheter/akut--och-olycksfallsmottagning/
    Wait Until Element Is Visible       css:#main-content > div > div.department-wrapper > div.main-wrapper.department-one > div > div > div > div.kivcontact__column-container
    Wait Until Element Contains         css:#main-content > div > div.department-wrapper > div.main-wrapper.department-one > div > div > div > div.kivcontact__column-container     031 - 342 10 00
    Wait Until Element Contains         css:#main-content > div > div.department-wrapper > div.main-wrapper.department-one > div > div > div > div.kivcontact__column-container     Gröna stråket 4
    Wait Until Element Contains         css:#main-content > div > div.department-wrapper > div.main-wrapper.department-one > div > div > div > div.kivcontact__column-container     413 46 Göteborg