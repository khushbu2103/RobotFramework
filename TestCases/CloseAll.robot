*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window

    Open browser    https://automationpractice.com/index.php    chrome
    maximize browser window

    close all browser

#------------------------------------------------------
#* Settings *
#Library  SeleniumLibrary
#
#* Variables *
#${browser1}  chrome
#${url1}  https://demowebshop.tricentis.com/register
#
#${url2}  https://automationpractice.com/index.php
#
#* Test Cases *
#RegTest
#    Open browser    ${url1}  ${browser}
#    maximize browser window
#
#    Open browser    ${url2}
#    maximize browser window