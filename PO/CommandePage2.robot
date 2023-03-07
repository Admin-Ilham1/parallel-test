*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/CommandePage.py

*** Variables ***
${Prénom}      Ilh1
${Nom}          Brh3
${Nom_d_entreprise}     /?>
${Numéro_nom_de_rue}       ..?
${Ville}        123
${Région_Département}       x23
${Code_postal}     ABC
${Téléphone}        Hello word
${E_mail }          ..?@k

*** Keywords ***
entrer les details de la commande - valeurs incorrectes
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

Wait until it checks and display -Commande non Valide-
                        wait until element is visible           ${commande_invalide}                        ### msg afficher : E-mail non valide
                        sleep       5