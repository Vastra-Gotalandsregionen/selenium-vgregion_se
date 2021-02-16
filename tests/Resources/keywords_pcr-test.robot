*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  Collections

*** Keywords ***

Get All Links Pcr-test

    # [Tags]    Links
    # [Documentation]     Gets all links on page and tests status code to be 200

    ${AllLinksCount} =          Get Element Count           css:.pagelistblock li a

    FOR                         ${INDEX}                    IN RANGE                    1               ${AllLinksCount}

        ${linkurl}=             Get Element Attribute       css:.pagelistblock li a     href

        #Checks if links return 200-value
        ${statusCodeResult}     check status code           ${linkurl}
        Should Be True          ${statusCodeResult}         'true'
    END

