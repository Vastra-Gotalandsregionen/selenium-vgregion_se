*** Settings ***
Documentation
Resource  Resources/keywords_prenumeration_nyhetsbrev.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/ov/data-och-analys/nyhetsbrev-och-seminarier/anmalan-till-nyhetsbrev/

*** Test Cases ***

Test Listen
    Test Listen Function

Verify Header Is Visible

    Verify If Header Menu Is Visible

Verify Sök Function

    Verify Sök Function Is Working

Subscribe To Newsletter
    Test Subscribe

Unsubscribe To Newsletter
    Test Unsubscribe

Fetch Links And Check Responsecode
    Get All Links And Return Response Code
