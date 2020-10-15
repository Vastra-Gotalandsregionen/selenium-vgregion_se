*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  checkStatusCode.py

*** Keywords ***

Test Links

    Wait Until Element Is Visible       css:#main-content > p:nth-child(4) > a
    Wait Until Element Is Visible       css:#main-content > p:nth-child(5) > a

Test Dropdown Section

    Wait Until Element Is Visible       css:#main-content > div.row
    Wait Until Element Is Visible       css:#main-content > div.row > div:nth-child(1) > div > div
    Click Element                       css:#main-content > div.row > div:nth-child(1) > div > div
    Click Element                       css:#main-content > div.row > div:nth-child(1) > div > div
    Click Element                       css:#main-content > div.row > div:nth-child(3)
    Click Element                       css:#main-content > div.row > div:nth-child(3) > div > div > div:nth-child(1)

