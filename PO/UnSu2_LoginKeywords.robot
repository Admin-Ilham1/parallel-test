*** Settings ***
Documentation       Unsuccessful Login
Library             SeleniumLibrary
Variables           ../customLibraries/Locators.py

*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${Invalid_UserName}          ilhbourh@gmail.com
${valid_Password}         ilham12*


*** Keywords ***
Se connecter
            click element          ${Connexion}
            sleep       4

Entre a Valide UserName
        [Arguments]             ${Invalid_UserName}
        input text              ${txt_loginUserName}        ${Invalid_UserName}

Entre a Valide Password
        [Arguments]             ${valid_Password}
        input text              ${txt_loginPassword}        ${valid_Password}
        sleep       5

S'identifier and Verify the UnSuccessful Login
        click element           ${Identification_Button}
        wait until element is visible       ${UnSuccessful_Login}