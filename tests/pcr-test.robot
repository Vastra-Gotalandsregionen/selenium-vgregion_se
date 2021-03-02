*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_pcr-test.robot
Library   SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***

${BROWSER} =    chrome
${URL} =        https://www.vgregion.se/pcr-test-vgr/

*** Test Cases ***

Test Get All Links Pcr-test

    Get All Links Pcr-test

