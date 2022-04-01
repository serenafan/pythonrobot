*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py

*** Keywords ***
Click Advanced Search link
    click link  ${AdvancedSearchLink}