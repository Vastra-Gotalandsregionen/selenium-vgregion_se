*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  Collections
#General tests for functions used on many pages

*** Keywords ***

Get All Links Pcr-test

    # [Tags]    Links
    # [Documentation]     Gets all links on page and tests status code to be 200

    ${AllLinksCount} =          Get Element Count           //a
    Log                         ${AllLinksCount}
    @{LinkItems}                Create List
    FOR                         ${INDEX}                    IN RANGE                1               ${AllLinksCount}
        Log                     ${INDEX}
        ${linktext}=            Get Text                    xpath=(//a)[${INDEX}]
        Log                     ${linktext}
        ${linklength}           Get Length                  ${linktext}
        Run Keyword If          ${linklength}>1             Append To List          ${LinkItems}    ${linktext}
    END

    ${LinkSize}=                Get Length                  ${LinkItems}
    Log                         ${LinkSize}
    FOR                         ${ELEMENT}                  IN                      @{LinkItems}
        Log                     ${ELEMENT}

        #Checks if links return 200-value
        # TODO: Check if this really tests the right URL
        ${statusCodeResult}     check status code           ${URL}
        Log                     ${statusCodeResult}
        Should Be True          ${statusCodeResult}         'true'


        # Checks HTML for links which opens '_blank' without the following attributes:
        # TODO: Move to separate test
        # TODO: Check if this really tests the right URL
        # rel="noopener"
        # rel="noreferrer"
        ${noanchor}             no anchor target blank      ${URL}
        Log                     ${noanchor}
        Should Be True          ${noanchor}                 'true'


        # Checks HTML for not allowed third parties. For te moment only looks for Google Analytics, Google Tag Manager and Adobe Analytics.
        # TODO: Move to separate test
        # TODO: Check if this really tests the right URL
        ${checkthirdparties}    only allowed third parties  ${URL}
        Log                     ${checkthirdparties}
        Should Be true          ${checkthirdparties}        'true'
    END

