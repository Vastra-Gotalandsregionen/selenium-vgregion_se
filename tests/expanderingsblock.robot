*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_expanderingsblock.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/webbhandboken/block/expanderingsblock/?vgrform=1


*** Test Cases ***

Test Expanderingsblock

    Expanderingsblock