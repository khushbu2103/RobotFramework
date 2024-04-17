[11:41, 16/4/2024] Rihal bridgelabz: * Settings *
Library  SeleniumLibrary

*** Test Cases ***
Testing Frames
    Open browser    https://seleniumhq.github.io/selenium/docs/api/java/index    chrome
    maximize browser window

    select frame    packageListFrame
    click link  org.openqa.selenium
    unselect frame
    sleep   3

    select frame    packageFrame
    click link  WebDriver
    unselect frame
    sleep   3

    select frame    classFrame
    click link  Help
    unselect frame
    sleep   3

    close browser
[11:41, 16/4/2024] Rihal bridgelabz: * Settings *
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    Open browser    ${url}  ${browser}
    maximize browser window

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10 seconds

    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}
    select radio button     Gender      M
    input text      name:FirstName       Rihal
    input text      name:LastName       Shaikh
    input text      name:Email       rihalshaikh999@gmail.com
    input text      name:Password       Pass@123
    input text      name:ConfirmPassword       Pass@123