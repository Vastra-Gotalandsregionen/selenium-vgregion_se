*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_pcr-test.robot
Library   SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***

${BROWSER} =    chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/pcr-test-vgr/?vgrform=1

*** Test Cases ***

Test Get All Links Pcr-test

    Get All Links Pcr-test

