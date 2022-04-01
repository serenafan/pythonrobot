*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Keywords ***
Enter Advanced Search Criteria
    [Arguments]    ${Language}    ${State}    ${Stars}    ${Followers}    ${License}
    select from list by value    ${LanguageDropDown}  ${Language}
    select from list by value    ${StateDropDown}  ${State}
    input text    ${SearchStarInputBox}    ${Stars}
    input text    ${FollowersInputBox}    ${Followers}
    select from list by label    ${LicenseDropDown}    ${License}
    click button    ${Search}
