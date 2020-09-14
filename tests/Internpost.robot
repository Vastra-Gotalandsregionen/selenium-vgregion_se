*** Settings ***
Documentation
Resource  Resources/keywords.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/internpost


*** Test Cases ***

Test Searchbar
    Make Two Unique Searches