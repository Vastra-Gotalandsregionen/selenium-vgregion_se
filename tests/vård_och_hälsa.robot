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

Fetch Links And Check Responsecode
    Get All Links And Return Response Code

Test Lyssna
    Test Listen Function

Verify Sök Function
    Verify Sök Function Is Working

Verify Header Is Visible
    Verify If Header Menu Is Visible

Fetch Links And Check Responsecode
    Get All Links And Return Response Code