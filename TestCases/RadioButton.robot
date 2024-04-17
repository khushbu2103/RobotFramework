*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.ankitweblogic.com/html/formexercise.php

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window

    input text  placeholder:Enter First Name    Khushi
    input text  placeholder:Enter Last Name     Soni
    #Selecting Radio button
    select radio button     gender     Female



    #Selecting Check Box
    #select checkbox BlackTea
    #select checkbox RedTea

    #unselected checkbox BlackTea



#--------------------------------------------------------------------


#* Settings *
#Library  SeleniumLibrary
#
#* Variables *
#${URL}  https://www.ankitweblogic.com/html/formexercise.php
#${BROWSER}  chrome
#${FIRST_NAME}  Khushi
#${LAST_NAME}  Soni
#${DATE}  21
#${MONTH}  January
#${YEAR}  1996
#${GENDER}  Male
#${COUNTRY}  India
#${EMAIL}  khushi123testid@gmail.com
#${PHONE}  8830540511
#${PASSWORD}  rajwiney21
#
#* Test Cases *
#Fill Out Form
#    Open Browser  ${URL}  ${BROWSER}
#    Input Text  xpath=//input[@type='text' and @placeholder='Enter First Name']  ${FIRST_NAME}
##    Input Text  xpath=//input[@id='lastName']  ${LAST_NAME}
##    Select From List by Label  xpath=//select[@id='date']  ${DATE}
##    Select From List by Label  xpath=//select[@id='month']  ${MONTH}
##    Select From List by Label  xpath=//select[@id='year']  ${YEAR}
##    Click Element  xpath=//input[@type='radio' and @value='${GENDER}']
##    Select From List by Label  xpath=//select[@id='country']  ${COUNTRY}
##    Input Text  xpath=//input[@id='email']  ${EMAIL}
##    Input Text  xpath=//input[@id='phone']  ${PHONE}
##    Input Text  xpath=//input[@id='password']  ${PASSWORD}
##    Input Text  xpath=//input[@id='confirmPassword']  ${PASSWORD}
##    Click Element  xpath=//input[@id='agree']
#    Close Browser
#