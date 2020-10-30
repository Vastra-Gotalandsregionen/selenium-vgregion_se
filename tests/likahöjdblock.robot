*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_likahöjdblock.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/webbhandboken/block/lika-hojdblock/



*** Test Cases ***

Test Likahöjdblock

    Compare Sizes Of Blocks
