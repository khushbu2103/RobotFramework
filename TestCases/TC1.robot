*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginTpApplication
    close browser


*** Keywords ***
loginTpApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    khushi123testid@gmail.com
    input text  id:Password     rajwiney21
    click element   xpath://button[@class='button-1 login-button']