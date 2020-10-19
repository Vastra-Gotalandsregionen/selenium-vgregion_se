*** Settings ***
Documentation
Resource  Resources/keywords_regional_lagesrapport_covid-19.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/aktuellt/nyhetslista/regional-lagesrapport-covid-19/


*** Test Cases ***

Test Lyssna
    Test Listen Function

Verify Sök Function
    Verify Sök Function Is Working

Verify Header Is Visible
    Verify If Header Menu Is Visible

Test Statistik Links
    Test Links


Fetch Links And Check Responsecode
    Get All Links And Return Response Code