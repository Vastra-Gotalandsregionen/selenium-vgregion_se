*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_startsidan.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/



*** Test Cases ***

Test Lyssna
    Test Listen Function

Verify Sök Function
    Verify Sök Function Is Working

Verify Header Is Visible
    Verify If Header Menu Is Visible

Test Dropdown Under Aktuellt
    Verify Dropdown Under Aktuellt

Test VGR Fokus Box
    Verify VGR Fokus Links

Fetch Links And Check Responsecode
    Get All Links And Return Response Code