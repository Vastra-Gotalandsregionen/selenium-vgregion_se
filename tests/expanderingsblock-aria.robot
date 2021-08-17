*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_expanderingsblock-aria-expanded.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/webbhandboken/block/expanderingsblock/?vgrform=1



*** Test Cases ***

Test aria-expanded set when clicked

    aria-expanded set when clicked
