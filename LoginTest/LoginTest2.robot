*** Settings ***
Documentation       Unsuccessful Login
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource           ../PO/UnSu2_LoginKeywords.robot


*** Test Cases ***
LoginTest
        open the browser with URL
        UnSu2_LoginKeywords.Se connecter
        UnSu2_LoginKeywords.Entre a Valide UserName        ${Invalid_UserName}
        UnSu2_LoginKeywords.Entre a Valide Password        ${valid_Password}
        UnSu2_LoginKeywords.S'identifier and Verify the UnSuccessful Login

