*** Settings ***
Documentation       Unsuccessful Login
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource           ../PO/UnSu3_LoginKeywords.robot



*** Test Cases ***
LoginTest
        open the browser with URL
        UnSu3_LoginKeywords.Se connecter
        UnSu3_LoginKeywords.Entre a Valide UserName         ${valid_UserName}
        UnSu3_LoginKeywords.Entre a Valide Password         ${Invalid_Password}
        UnSu3_LoginKeywords.S'identifier and Verify the UnSuccessful Login