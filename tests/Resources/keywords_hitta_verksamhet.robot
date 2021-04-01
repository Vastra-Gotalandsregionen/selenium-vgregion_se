*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***

Test searchbar With Input
    Sleep                                 1s
    Input Text                            id:SearchQuery      göteborg
    Click Element                         id:SearchButton
    ${allPageListLinks} =                 Get Webelements         css:.organizationsearchresultblock li h3 a
    ${allLinksCount} =                    Get Length              ${allPageListLinks}

    FOR                                   ${INDEX}                IN RANGE                                1           ${allLinksCount}
        ${linkUrl} =                      Get Element Attribute   ${allPageListLinks}[${INDEX}]          href

        #Check if status code is 200
        ${statusCodeResult}               Check Status Code       ${linkUrl}
        Should Be True                    ${statusCodeResult}     true
    END


Test searchbar Without Input
    Sleep                                 1s
    Click Element                         id:SearchButton
    Sleep                                 1s
    Wait Until Page Contains Element      css:.vgr-search-list
    ${allPageListLinks} =                 Get Webelements         css:.organizationsearchresultblock li h3 a
    ${allLinksCount} =                    Get Length              ${allPageListLinks}
    FOR                                   ${INDEX}                IN RANGE                                1           ${allLinksCount}
        ${linkUrl} =                      Get Element Attribute   ${allPageListLinks}[${INDEX}]          href

        #Check if status code is 200
        ${statusCodeResult}               Check Status Code       ${linkUrl}
        Should Be True                    ${statusCodeResult}     true
    END
