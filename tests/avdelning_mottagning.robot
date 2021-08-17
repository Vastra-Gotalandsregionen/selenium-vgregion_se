
*** Settings ***
Documentation
Resource  Resources/keywords_avdelning_mottagning.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Library  Process
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${NARHALSAN_DOMAIN} =  www.narhalsan.se
${URL} =  https://${NARHALSAN_DOMAIN}/hitta-mottagning/goteborg/goteborg-ostra/narhalsan-angered-vardcentral/?vgrform=1


*** Test Cases ***

Expandera Kontaktblock
    Expandera Kontaktblock Test

Test Flikar
    Test Flikar

Test Kontaktuppgifter Block Info Is Correct
    Test Kontaktuppgifter Block Info Is Correct

Test Sjuk Kväll Eller Helg First
    Test Sjuk Kväll Eller Helg First In List

Test Sjuk Kväll Eller Helg Second
    Test Sjuk Kväll Eller Helg Second In List