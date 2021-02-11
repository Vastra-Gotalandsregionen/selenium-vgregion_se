*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_pcr-test.robot
Library   SeleniumLibrary
Library   Requests
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***

${BROWSER} =	chrome
${URL} =	    https://www.vgregion.se/webbhandboken/block/expanderingsblock/

*** Test Cases ***

Test Get All Links Pcr-test

	Get All Links Pcr-test

