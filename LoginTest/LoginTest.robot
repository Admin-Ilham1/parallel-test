*** Settings ***
Documentation       successful Login
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource           ../PO/LoginKeywords.robot



*** Test Cases ***
LoginTest
        resources.open the browser with URL
        LoginKeywords.Se connecter
        LoginKeywords.Entre a Valide UserName         ${UserName}
        LoginKeywords.Entre a Valide Password         ${Password}
        LoginKeywords.S'identifier and Verify the Successful Login