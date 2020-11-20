*** Settings ***
Documentation
Resource  Resources/keywords_hitta_dokument.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://hittadokument.vgregion.se/


*** Test Cases ***

Test searchbar With Input
    Test searchbar With Input

Test searchbar Without Input
    Test searchbar Without Input
