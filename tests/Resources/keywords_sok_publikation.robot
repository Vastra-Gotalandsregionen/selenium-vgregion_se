*** Settings ***
Documentation
Library  SeleniumLibrary
Library  String

*** Keywords ***

Test Search With Input

    Wait Until Page Contains Element        css:#SearchQuery
    Input Text                              id:SearchQuery                  ${SEARCHSTRING}
    Click Element                           css:#SearchButton
    Sleep                                   2s
    ${SearchResultAmount} =                 Get Element Count               css:.searchresultpagelistblock dd
    ${SearchResultTagsAmount} =             Get Element Count               css:[href~="${SEARCHSTRING}"]
    Should Be Equal                         ${SearchResultTagsAmount}       ${SearchResultTagsAmount}

Test Search Without Input

    Wait Until Page Contains Element        css:#SearchQuery
    Click Element                           css:#SearchButton
    Sleep                                   2s
    Wait Until Page Contains Element        css:dd.block__row
    ${SearchResultAmount} =                 Get Element Count               css:.searchresultpagelistblock dd
    Should Be True                          ${SearchResultAmount} > 140  # Magic number, there is 160 matches 2020-11-30

Test Search Letter Index

    Wait Until Page Contains Element        css:.pagelistblock__charachter  # Sic! Will break if typo is fixed
    # We are clicking the letter S, since the id with only S is more likely to
    # collide (as have done with q before, but there is nothing on Q here...)
    ${IndexLetterElement} =                 Get WebElement                  xpath=//a[@class="pagelistblock__charachter"][contains(text(),"S")]  # Sic! Will break if typo is fixed
    ${Fragment} =                           Get Element Attribute           ${IndexLetterElement}   href
    Log                                     ${Fragment} # It seems this isn't a fragment but the whole URL + fragment. But it still works so :shrug:
    Click Element                           ${IndexLetterElement}
    Location Should Contain                 ${Fragment}
