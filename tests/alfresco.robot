*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_alfresco.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/ov/alfresco/



*** Test Cases ***

Test Lyssna
    Test Listen Function

Verify Sök Function
    Verify Sök Function Is Working

Verify Header Is Visible
    Verify If Header Menu Is Visible

Verify Dropdown
    Check Dropdown Ta Kontakt Med Webbansvarig Här