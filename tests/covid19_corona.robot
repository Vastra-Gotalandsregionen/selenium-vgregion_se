
*** Settings ***
Documentation
Resource  Resources/Keywords_covid19_corona.robot
Resource  Resources/keywords_general.robot
Library  SeleniumLibrary
Library  Process
Library  C:\\Users\\abram\\Vgr\\selenium-vgregion_se\\tests\\checkStatusCode.py
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

Verify Educational Video

    Verify If Educational Video Appears


Verify Sök In Header

    Verify Sök Function From Header Is Visible
    Verify Sök Function Is Working