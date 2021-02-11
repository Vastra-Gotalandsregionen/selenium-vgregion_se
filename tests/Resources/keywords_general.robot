*** Settings ***
Documentation
Library  SeleniumLibrary
Library  Process
Library  ./checkStatusCode.py
Library  Collections
Library  no_anchor_target_blank.py
Library  check_third_parties.py
#General tests for functions used on many pages

*** Keywords ***

Open Page

    # [Documentation]    Opens selected browser with selected website

    Open Browser                about:blank     ${BROWSER}
    Go To                       ${URL}


Test Listen Function

    # [Documentation]     Tests "Lyssna Nu" on header of page
    Set Window Size                1400  1000
    Sleep                                   1s
    Click Element               id:speaklink
    Sleep                       2s
    Click Button                id:agreecookie
    Wait Until Page Contains Element  id:insipio_player
    Click Button                id:play50x50
    Wait Until Page Contains Element  id:pause50x50

Verify If Header Menu Is Visible

    # [Documentation]     Verifies that header appears on page
    Set Window Size                1400  1000
    Wait Until Element Is Visible           id:main-menu-nav

Verify Sök Function Is Working

    # [Documentation]     Verifies that searchbar on header works
    Set Window Size                1400  1000
    Sleep                                   1s
    Input Text                              name:q  vård
    Click Element                           css:.vgr-button.search__button
    Wait Until Page Contains Element        id:search-page


Get All Links And Return Response Code

    # [Tags]    Links
    # [Documentation]     Gets all links on page and tests staus code to be 200

    ${AllLinksCount} =          Get Element Count           //a
    Log                         ${AllLinksCount}
    @{LinkItems}                Create List
    FOR                         ${INDEX}                    IN RANGE                1               ${AllLinksCount}
        Log                     ${INDEX}
        ${lintext}=             Get Text                    xpath=(//a)[${INDEX}]
        Log                     ${lintext}
        ${linklength}           Get Length                  ${lintext}
        Run Keyword If          ${linklength}>1             Append To List          ${LinkItems}    ${lintext}
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



End Test

    Close Browser