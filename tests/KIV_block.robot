*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_KIV_block.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${VGR_DOMAIN} =  www.vgregion.se
${URL} =  https://${VGR_DOMAIN}/om-vgr/organisation-och-verksamhet/alla-verksamheter/koncernkontoret/kontakt-regionledningen/



*** Test Cases ***

Test KIV Block

    Check KIV Block Visibility
