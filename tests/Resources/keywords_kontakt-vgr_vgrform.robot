*** Settings ***
Documentation
Library  SeleniumLibrary
Library  OperatingSystem

*** Keywords ***

Verify Phonenumber Is Visible

    Wait Until Page Contains    010-441 00 00
