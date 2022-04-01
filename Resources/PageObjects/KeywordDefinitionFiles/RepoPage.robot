*** Settings ***
Library  SeleniumLibrary
Library    String
Variables  ../Locators/Locators.py

*** Keywords ***
Click readme file link
    click link    ${ReadmeLink}

Print readme file
    wait until page contains  Raw
    click link    ${ReadmeRawLink}
    ${text}=    get text    ${Paragraph}
    ${substringText} =    Get Substring    ${text}    0    29
    log to console    ${substringText}
