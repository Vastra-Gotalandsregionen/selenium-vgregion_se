*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_folktandvården.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://folktandvarden.vgregion.se/



*** Test Cases ***

Verify Header Is Visible
    Verify If Header Menu Is Visible

Test Hitta Klinik No Filtera
    Use Hitta Klinik

Test Hitta Klinik With Filters
    Use Hitta Klinik With Filters