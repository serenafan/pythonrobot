*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/KeywordDefinitionFiles/AdvancedSearchPage.robot
Resource  ../Resources/PageObjects/KeywordDefinitionFiles/RepoPage.robot
Resource  ../Resources/PageObjects/KeywordDefinitionFiles/SearchPage.robot
Resource  ../Resources/PageObjects/KeywordDefinitionFiles/TopNav.robot

*** Variables ***
${site_url}  https://github.com
${browser}  Chrome
${SearchKeyword}    react
${Language}    JavaScript
${State}    closed
${Stars}    >45
${Followers}    >50
${License}    Boost Software License 1.0
${SearchResultText}    1 repository result
${Repository}    /mvoloskov/decider

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [Documentation]    This test case verifies that the user is able to successfully do advance search of github repo
    [Tags]    Smoke
    open browser    ${site_url}  ${browser}
    Input Keyword in searchBox    ${SearchKeyword}
    Click Advanced Search link
    Enter Advanced Search Criteria    ${Language}    ${State}    ${Stars}    ${Followers}    ${License}
    element should be visible    xpath://h3[contains(text(),"${SearchResultText}")]
    click link    css:[href="${Repository}"]
    Click readme file link
    Print readme file
#    close all browsers

*** Keywords ***