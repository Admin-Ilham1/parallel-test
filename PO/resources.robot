*** Settings ***
Documentation       resources file
Library             SeleniumLibrary

*** Variables ***
${URL}              http://192.168.31.31/

*** Keywords ***
open the browser with URL
        create webdriver            Chrome
        go to                       ${URL}
        Maximize Browser Window
        sleep       6
