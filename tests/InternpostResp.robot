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

Test Page Responsive IphoneX
    Test IphoneX Displaysize

Test Page Responsive Ipad
    Test Ipad Displaysize

Test Page Responsive GalaxyFold
    Test GalaxyFold Displaysize

Test Menu IphoneX
    Verify Menu Is Still Present IphoneX

Test Sök IphoneX
    Verify Sök Is Still Present IphoneX