*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Get all links on page and tests status code to be 200

    ${allPageListLinks} =                       Get Webelements         css:.pagelistblock li a
    ${allLinksCount} =                          Get Length              ${allPageListLinks}

    FOR                                         ${INDEX}                IN RANGE                                1           ${allLinksCount}
        ${linkUrl} =                            Get Element Attribute   ${allPageListLinks}[${INDEX}]          href

        #Check if status code is 200
        ${statusCodeResult}                     Check Status Code       ${linkUrl}
        Should Be True                          ${statusCodeResult}     true
    END
