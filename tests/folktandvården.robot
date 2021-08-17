*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_folktandvården.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${FTV_DOMAIN} =  folktandvarden.vgregion.se
${URL} =  https://${FTV_DOMAIN}/vara-kliniker/?vgrform=1


*** Test Cases ***

Verify Header Is Visible
    Verify If Header Menu Is Visible

Test Hitta Klinik No Filtera
    Use Hitta Klinik

Test Hitta Klinik With Filters
    Use Hitta Klinik With Filters