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
    select radio button     Gender      F
    input text      name:FirstName       Khushi
    input text      name:LastName       Soni
    input text      name:Email       khushi123testid@gmail.com
    input text      name:Password       rajwiney21
    input text      name:ConfirmPassword       rajwiney21