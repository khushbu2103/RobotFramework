*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    Open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console      ${time}

    set selenium timeout    10 seconds
    wait until page contains    Registration

    select radio button     Gender      F
    input text      name:FirstName       Khushi
    input text      name:LastName       Soni
    input text      name:Email       khushi123testid@gmail.com
    input text      name:Password       rajwiney21
    input text      name:ConfirmPassword       rajwiney21