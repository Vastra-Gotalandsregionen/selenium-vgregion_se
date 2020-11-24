*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_expanderingsblock.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/webbhandboken/block/expanderingsblock/



*** Test Cases ***

Test Expanderingsblock

    Expanderingsblock