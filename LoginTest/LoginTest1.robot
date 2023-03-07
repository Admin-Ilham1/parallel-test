*** Settings ***
Documentation       Unsuccessful Login
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource           ../PO/UnSu1_LoginKeywords.robot


*** Test Cases ***
LoginTest
        open the browser with URL
        UnSu1_LoginKeywords.Se connecter
        UnSu1_LoginKeywords.Entre a Valide UserName         ${valid_UserName}
        UnSu1_LoginKeywords.Entre a Valide Password         ${Invalid_Password}
        UnSu1_LoginKeywords.S'identifier and Verify the UnSuccessful Login