*** Settings ***
Documentation
resource  Resources/keywords_analyslista.robot
resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.sahlgrenska.se/for-dig-som-ar/vardgivare/laboratoriemedicin/analyslista/



*** Test Cases ***

Test Analysis and Testing Search
    Use Analysis Search

Test Empty search
    Use Empty String in Search

Test Results Filtering
    Use Select to Filter Query
