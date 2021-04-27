*** Settings ***
Documentation
Resource  Resources/keywords_hitta_verksamhet.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${NARHALSAN_DOMAIN} =  www.narhalsan.se
${URL} =  https://${NARHALSAN_DOMAIN}/hitta-mottagning/

*** Test Cases ***

Test searchbar With Input
    Test searchbar With Input

Test searchbar Without Input
    Test searchbar Without Input
