*** Settings ***
Documentation       Unsuccessful Login
Library             SeleniumLibrary
Variables           ../customLibraries/Locators.py

*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${valid_UserName}           ilhambourhaum1@gmail.com
${Invalid_Password}         ..?_

*** Keywords ***
Se connecter
            click element          ${Connexion}                      #xpath://span[contains(text(),' / S’enregistrer')]
            sleep       4

Entre a Valide UserName
        [Arguments]             ${valid_UserName}
        input text              ${txt_loginUserName}        ${valid_UserName}

Entre a Valide Password
        [Arguments]             ${Invalid_Password}
        input text              ${txt_loginPassword}        ${Invalid_Password}
        sleep       5

S'identifier and Verify the UnSuccessful Login
        click element           ${Identification_Button}
        wait until element is visible       ${UnSuccessful_Login}
        sleep       3