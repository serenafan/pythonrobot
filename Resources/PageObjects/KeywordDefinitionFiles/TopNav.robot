*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Keywords ***
Input Keyword in searchBox
     [Arguments]    ${SearchKeyword}
    Input Text  ${SearchBox}  ${SearchKeyword}
    Press Keys    ${SearchBox}    ENTER