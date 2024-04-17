*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    Open browser    ${url}  ${browser}
    maximize browser window

    ${spead}=   get selenium speed
    log to console  ${spead}
    set selenium speed  1 seconds
    select radio button     Gender      M
    input text      name:FirstName       Khushi
    input text      name:LastName       Soni
    input text      name:Email       khushi123testid@gmail.com
    input text      name:Password       rajwiney21
    input text      name:ConfirmPassword       rajwiney21
    ${spead}=   get selenium speed
    log to console  ${spead}