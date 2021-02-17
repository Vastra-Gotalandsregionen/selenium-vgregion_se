*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_sidlistningsblock.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/regional-utveckling/verksamhetsomraden



*** Test Cases ***

Test Sidlistningsblock

    Sidlistningsblock Test
