*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_sidlistningsblock.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/webbhandboken/block/sidlistningsblock/



*** Test Cases ***

Test Sidlistningsblock

    Sidlistningsblock Test

#Test Links

    #Get All Links And Return Response Code