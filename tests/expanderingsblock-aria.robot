*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_expanderingsblock-aria-expanded.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/webbhandboken/block/expanderingsblock/



*** Test Cases ***

Test aria-expanded set when clicked

    aria-expanded set when clicked
