*** Settings ***
Documentation
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.vgregion.se/internpost


*** Test Cases ***

Open Page
    Open Page