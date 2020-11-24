
*** Settings ***
Documentation
Resource  Resources/Keywords_covid19_corona.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Library  Process
Test Setup  Open Page
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/covid-19-corona


*** Test Cases ***

Test Link Test Link Smittskydd Västra Götalands information till allmänheten

    Test Link Smittskydd Västra Götalands information till allmänheten

Test Link Folkhälsomyndighetens information till allmänheten

    Test Link Folkhälsomyndighetens information till allmänheten


Verify Header Is Visible

    Verify If Header Menu Is Visible

Verify Sök Function

    Verify Sök Function Is Working


Test Listen

    Test Listen Function
