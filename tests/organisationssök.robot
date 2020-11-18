*** Settings ***
Documentation
Resource  Resources/keywords_organisationssök.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
#Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.narhalsan.se/hitta-mottagning/


*** Test Cases ***

Test Searchbar
    Compare Searchbar With And Without Filters