*** Settings ***
Documentation
resource  Resources/keywords_analyslista.robot
resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${SU_DOMAIN} =  www.sahlgrenska.se
${URL} =  https://${SU_DOMAIN}/for-dig-som-ar/vardgivare/laboratoriemedicin/analyslistan/



*** Test Cases ***

Test Analysis and Testing Search
    Use Analysis Search

Test Empty search
    Use Empty String in Search

Test Results Filtering
    Use Select to Filter Query
