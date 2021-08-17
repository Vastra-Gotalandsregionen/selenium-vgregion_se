*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_sidlistningsblock.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/webbhandboken/block/sidlistningsblock/?vgrform=1



*** Test Cases ***

Test Sidlistningsblock

    Sidlistningsblock Test
