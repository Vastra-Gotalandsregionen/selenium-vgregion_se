*** Settings ***
Documentation
Resource  resources/keywords_internpost.robot
Resource  resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/internpost/?vgrform=1


*** Test Cases ***

Test Searchbar
    Make Two Unique Searches

Test Invalid Input
    Make Search With Invalid Input