*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Sidlistningsblock Test

    # [Documentation] Verifies that block is existing, contains a link and check statusCode.

    Wait Until Element Is Visible               css:.pagelistblock li a
    ${allLinksCount} =                          Get Element Count       css:.pagelistblock li a
    FOR                                         ${INDEX}                IN RANGE                    1           ${allLinksCount}
        ${linkUrl} =                            Get Element Attribute   css:.pagelistblock li a     href
        ${statusCodeResult}                     Check Status Code       ${linkUrl}
        Should Be True                          ${statusCodeResult}     true
    END
