*** Settings ***
Documentation
Resource  Resources/keywords_vård_och_hälsa.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/halsa-och-vard/


*** Test Cases ***

Fetch Links
    Get All Links