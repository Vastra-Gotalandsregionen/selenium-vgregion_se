*** Settings ***
Documentation
Resource  Resources/keywords_internpost.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/internpost


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