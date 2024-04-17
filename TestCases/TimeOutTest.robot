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

    select radio button     Gender      M
    input text      name:FirstName       Rihal
    input text      name:LastName       Shaikh
    input text      name:Email       rihalshaikh999@gmail.com
    input text      name:Password       Pass@123
    input text      name:ConfirmPassword       Pass@123