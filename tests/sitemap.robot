*** Settings ***
Documentation
Resource  Resources/keywords_kontakt-vgr_vgrform.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/Sitemap.xml



*** Test Cases ***

