*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/CommandePage.py

*** Variables ***
${Prénom}      Ilham
${Nom}          Brh
${Nom_d_entreprise}     AB
${Numéro_nom_de_rue}        Hay Nahda
${Ville}        Rabat
${Région_Département}       Rabat-Salé-Kénitra
${Code_postal}      20200
${Téléphone}        0651780789
${E_mail }          IlhamBrh1@gmail.com

*** Keywords ***
valider la commande
                        Maximize Browser Window
                        [Arguments]         ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}
                        input text          ${Prénom1}                   ${Prénom}
                        input text          ${Nom1}                      ${Nom}
                        sleep       5
                        input text          ${Nom_d_entreprise1}         ${Nom_d_entreprise}
                        sleep       5
                        input text          ${Numéro_nom_de_rue1}        ${Numéro_nom_de_rue}
                        input text          ${Ville1}                     ${Ville}
                        input text          ${Région_Département1}        ${Région_Département}
                        input text          ${Code_postal1}               ${Code_postal}
                        sleep       4
                        input text          ${Téléphone1}                 ${Téléphone}
                        input text          ${E_mail1}                    ${E_mail}
                        sleep       4
                        select checkbox     ${Accepter_les_conditions}
                        sleep   5
                        click element       ${Commander}
                        sleep       7
                        wait until element is visible           ${commande_reçue}
                        sleep       5