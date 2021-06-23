*** Settings ***
Documentation
Resource  Resources/keywords_kontakt-vgr_vgrform.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/kontakt-vgr/?vgrform=1/



*** Test Cases ***

Verify Sök Function
    Verify Sök Function Is Working

Verify Header Is Visible
    Verify If Header Menu Is Visible

Verify Phonenumber
    Verify Phonenumber Is Visible