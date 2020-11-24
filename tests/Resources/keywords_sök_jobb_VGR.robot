*** Settings ***
Documentation
Library  SeleniumLibrary
Library  String

*** Keywords ***

Compare Filter Results Yrkesområde

    # [Documentation] Tests search results with input in relation to results with input and filters. Should be only input>input+filters.

    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber} =     Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber}
    ${searchresultnumber} =     Remove String        ${searchresultnumber}   Din sökning gav      annonser
    ${searchresultnumber} =     Convert To Number  ${searchresultnumber}
    Log                         ${searchresultnumber}
    Sleep                       2s
    Click Element               css:#select-1
    Sleep                       1s
    #Press Keys                  css:#select-1  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN
    Click Element               css:#select-1 > option:nth-child(6)
    Sleep                       1s
    #Press Keys                  css:#select-1  ENTER
    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber2} =    Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber2}
    ${searchresultnumber2} =    Remove String        ${searchresultnumber2}   Din sökning gav      annonser
    ${searchresultnumber2} =    Convert To Number  ${searchresultnumber2}
    Log                         ${searchresultnumber2}
    Should Be True              ${searchresultnumber2} < ${searchresultnumber}
    Should Be True              0 < ${searchresultnumber}

Compare Filter Results Förvaltning

    # [Documentation] Tests search results with input in relation to results with input and filters. Should be only input>input+filters.

    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber} =     Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber}
    ${searchresultnumber} =     Remove String        ${searchresultnumber}   Din sökning gav      annonser
    ${searchresultnumber} =     Convert To Number  ${searchresultnumber}
    Log                         ${searchresultnumber}
    Sleep                       2s
    Click Element               css:#select-2
    Sleep                       1s
    #Press Keys                  css:#select-1  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN
    Click Element               css:#select-2 > option:nth-child(3)
    Sleep                       1s
    #Press Keys                  css:#select-1  ENTER
    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber2} =    Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber2}
    ${searchresultnumber2} =    Remove String        ${searchresultnumber2}   Din sökning gav      annonser
    ${searchresultnumber2} =    Convert To Number  ${searchresultnumber2}
    Log                         ${searchresultnumber2}
    Should Be True              ${searchresultnumber2} < ${searchresultnumber}
    Should Be True              0 < ${searchresultnumber}

Compare Filter Results Anställningsform

    # [Documentation] Tests search results with input in relation to results with input and filters. Should be only input>input+filters.

    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber} =     Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber}
    ${searchresultnumber} =     Remove String        ${searchresultnumber}   Din sökning gav      annonser
    ${searchresultnumber} =     Convert To Number  ${searchresultnumber}
    Log                         ${searchresultnumber}
    Sleep                       2s
    Click Element               css:#select-4
    Sleep                       1s
    #Press Keys                  css:#select-1  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN
    Click Element               css:#select-4 > option:nth-child(7)
    Sleep                       1s
    #Press Keys                  css:#select-1  ENTER
    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber2} =    Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber2}
    ${searchresultnumber2} =    Remove String        ${searchresultnumber2}   Din sökning gav      annonser
    ${searchresultnumber2} =    Convert To Number  ${searchresultnumber2}
    Log                         ${searchresultnumber2}
    Should Be True              ${searchresultnumber2} < ${searchresultnumber}
    Should Be True              0 < ${searchresultnumber}

Compare Filter Results Kommun

    # [Documentation] Tests search results with input in relation to results with input and filters. Should be only input>input+filters.

    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber} =     Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber}
    ${searchresultnumber} =     Remove String        ${searchresultnumber}   Din sökning gav      annonser
    ${searchresultnumber} =     Convert To Number  ${searchresultnumber}
    Log                         ${searchresultnumber}
    Sleep                       2s
    Click Element               css:#select-3
    Sleep                       1s
    #Press Keys                  css:#select-1  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN  ARROW_DOWN
    Click Element               css:#select-3 > option:nth-child(14)
    Sleep                       1s
    #Press Keys                  css:#select-1  ENTER
    Click Element               css:#sök
    Sleep                                   1s
    ${searchresultnumber2} =    Get Text     css:#job-search-form > div:nth-child(2) > span
    Log                         ${searchresultnumber2}
    ${searchresultnumber2} =    Remove String        ${searchresultnumber2}   Din sökning gav      annonser
    ${searchresultnumber2} =    Convert To Number  ${searchresultnumber2}
    Log                         ${searchresultnumber2}
    Should Be True              ${searchresultnumber2} < ${searchresultnumber}
    Should Be True              0 < ${searchresultnumber}