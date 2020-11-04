*** Settings ***
Documentation
Resource  Resources/keywords_hitta_vgregion.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://hitta.vgregion.se/


*** Test Cases ***

Test Searchbar 1
    Make A Search 1

Test Searchbar 2
    Make A Search 2

Test Listen
    Test Listen Function

Test Spara Sökning
    Save Search

Compare Filter Results

    Compare Filter Results

Fetch Links And Check Responsecode
    Get All Links And Return Response Code