*** Settings ***
Documentation
Resource  Resources/keywords_general.robot
Resource  Resources/keywords_KIV_block.robot
Library  SeleniumLibrary
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/om-vgr/organisation-och-verksamhet/koncernkontoret/koncernstab-kommunikation-och-externa-relationer/



*** Test Cases ***

Test KIV Block

    Check KIV Block Visibility
