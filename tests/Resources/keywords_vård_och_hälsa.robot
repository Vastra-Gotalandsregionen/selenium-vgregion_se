*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Collections
Library  Process
Library  checkStatusCode.py


*** Keywords ***

Get All Links
    [Tags]    Links
    ${AllLinksCount} =    Get Element Count    //a
    Log    ${AllLinksCount}
    @{LinkItems}    Create List
     FOR    ${INDEX}    IN RANGE    1    ${AllLinksCount}
        Log    ${INDEX}
        ${lintext}=    Get Text    xpath=(//a)[${INDEX}]
        Log    ${lintext}
        ${linklength}    Get Length    ${lintext}
        Run Keyword If    ${linklength}>1    Append To List    ${LinkItems}    ${lintext}
     END
    ${LinkSize}=    Get Length    ${LinkItems}
    Log    ${LinkSize}
     FOR    ${ELEMENT}    IN    @{LinkItems}
        Log    ${ELEMENT}
     ${statusCodeResult}                     check status code     ${URL}
    Log To Console                          ${statusCodeResult}          console=yes
    Should Be True                          ${statusCodeResult}   'true'
     END
    Close Browser