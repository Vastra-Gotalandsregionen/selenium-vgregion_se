*** Settings ***
Documentation
Resource  Resources/keywords_sök_jobb_VGR.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/jobba-i-vgr/sok-jobb-i-vgr/?vgrform=1


*** Test Cases ***

Test Filtertype Yrkesområde
    Compare Filter Results Yrkesområde

Test Filtertype Förvaltning
    Compare Filter Results Förvaltning

Test Filtertype Anställningsform
    Compare Filter Results Anställningsform

Test Filtertype Kommun
    Compare Filter Results Kommun