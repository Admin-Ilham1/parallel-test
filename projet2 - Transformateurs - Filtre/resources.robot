*** Settings ***
Documentation       resources file
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
open the browser with URL
        create webdriver            Chrome
        go to                       http://192.168.31.31/