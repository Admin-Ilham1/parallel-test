*** Settings ***
Documentation       successful Login
Library             SeleniumLibrary
Variables           ../customLibraries/Locators.py

*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${UserName}         ilhambourhaum1@gmail.com
${Password}         ilham12*


*** Keywords ***
Se connecter
            click element           ${Connexion}
            sleep       4

Entre a Valide UserName
        [Arguments]                  ${UserName}
        input text              ${txt_loginUserName}        ${UserName}

Entre a Valide Password
        [Arguments]             ${Password}
        input text              ${txt_loginPassword}        ${Password}
        sleep       5

S'identifier and Verify the Successful Login
        click element           ${Identification_Button}
        wait until element is visible       ${Successful_Login}