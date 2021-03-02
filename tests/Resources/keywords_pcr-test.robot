*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  Collections

*** Keywords ***

Get All Links Pcr-test

    # [Tags]    Links
    # [Documentation]     Gets all links on page and tests status code to be 200


    ${allPageListLinks} =       Get WebElements             css:.pagelistblock li a
    ${allLinksCount} =          Get Length                  ${allPageListLinks}

    FOR                         ${INDEX}                    IN RANGE                        1     ${allLinksCount}

        ${linkurl}=             Get Element Attribute       ${allPageListLinks}[${INDEX}]   href

        #Checks if links return 200-value
        ${statusCodeResult}     check status code           ${linkurl}
        Should Be True          ${statusCodeResult}         'true'
    END

