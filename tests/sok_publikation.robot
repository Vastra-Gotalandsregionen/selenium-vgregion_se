*** Settings ***
Documentation
Resource  resources/keywords_sok_publikation.robot
Resource  resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =       chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/om-vgr/bestall-eller-ladda-ner-material/?vgrform=1
${SEARCHSTRING} =  Medicinska Riktlinje


*** Test Cases ***

Test Search With Input
    Test Search With Input

Test Search Without Input
    Test Search Without Input

Test Search Letter Index
    Test Search Letter Index