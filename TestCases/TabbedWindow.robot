*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open broswer    https://demo.automationtesting.in/Windows.html      chrome
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
    select window   title=Sakinalium | Home
    clisk element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
    sleep    3
    close all broswers