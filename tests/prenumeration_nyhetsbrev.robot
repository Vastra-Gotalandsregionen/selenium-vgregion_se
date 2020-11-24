*** Settings ***
# Documentation
# NOTE: Make sure to create a email-credentials.json from email-credentials.json.example


Resource  Resources/keywords_prenumeration_nyhetsbrev.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/ov/data-och-analys/nyhetsbrev-och-seminarier/anmalan-till-nyhetsbrev/

*** Test Cases ***



Subscribe To Newsletter
    Test Subscribe

Unsubscribe To Newsletter
    Test Unsubscribe


