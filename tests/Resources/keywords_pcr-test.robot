*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  Collections
#General tests for functions used on many pages

*** Keywords ***

Get All Links Pcr-test

    # [Tags]    Links
    # [Documentation]     Gets all links on page
    ${AllLinksCount}=     Get Element Count    //a
    Log                   ${AllLinksCount}
    @{LinkItems}          Create List
    FOR    ${INDEX}    IN RANGE    1    ${AllLinksCount}
        Log               ${INDEX}
        ${lintext}=       Get Text    xpath=(//a)[${INDEX}]
        Log               ${lintext}
        ${linklength}     Get Length    ${lintext}
        Run Keyword If    ${linklength}>1    Append To List    ${LinkItems}    ${lintext}
    END
    ${LinkSize}=          Get Length    ${LinkItems}
    Log                   ${LinkSize}
    FOR                   ${ELEMENT}    IN    @{LinkItems}
    Log                   ${ELEMENT}

