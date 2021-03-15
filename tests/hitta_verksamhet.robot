*** Settings ***
Documentation
Resource  Resources/keywords_hitta_dokument.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} = chrome
${URL} = https://www.narhalsan.se/hitta-mottagning/

*** Test Cases ***

Test searchbar With Input
    Test searchbar With Input

Test searchbar Without Input
    Test searchbar Without Input