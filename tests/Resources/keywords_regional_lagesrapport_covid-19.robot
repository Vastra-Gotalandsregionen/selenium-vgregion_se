*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  checkStatusCode.py

*** Keywords ***

Test Links

    Wait Until Element Is Visible       css:#main-content > p:nth-child(4) > a
    Wait Until Element Is Visible       css:#main-content > p:nth-child(5) > a



