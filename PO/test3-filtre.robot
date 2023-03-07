*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Browser}      Chrome
${URL}          http://192.168.31.31/
${Fabricant}        3
${Couleur}          1
${Isolation}        1
${Le_type}          1
${Matériau_conducteur}      1
${Mesure_du_fil}            1
${Taille_Dimension}         1
${Température}              1
${Tension}                  1

*** Keywords ***
clicker sur Cables et fils electrique - Fils de cable
                        [Arguments]           ${Categories}      ${Câbles_fils_electrique}       ${FILS_DE_CABLE}
                            click element           ${Categories}
                            sleep       4
                            click element          ${Câbles_fils_electrique}
                            sleep       5
                            click element           ${FILS_DE_CABLE}
                            sleep       3

filtrer les produits by attribute
                            [Arguments]         ${Fabricant}       ${Couleur}        ${Isolation}       ${Le_type}      ${Matériau_conducteur}     ${Mesure_du_fil}        ${Taille_Dimension}      ${Température}     ${Tension}
                            select from list by index       ${Fabricant1}        ${Fabricant}
                            sleep       7
                            select from list by index       ${Couleur1}          ${Couleur}
                            sleep       7
                            select from list by index       ${Isolation1}        ${Isolation}
                            sleep       7
                            select from list by index        ${Le_type1}         ${Le_type}
                            sleep       7
                            select from list by index       ${Matériau_conducteur1}          ${Matériau_conducteur}
                            sleep       7
                            select from list by index       ${Mesure_du_fil1}                ${Mesure_du_fil}
                            sleep       7
                            select from list by index       ${Taille_Dimension1}             ${Taille_Dimension}
                            sleep       7
                            select from list by index       ${Température1}                  ${Température}
                            sleep       7
                            select from list by index       ${Tension1}                      ${Tension}
                            sleep       7
                            click element                   ${Filtre_Button}
                            sleep       7
                            wait until element is visible   ${Produit_1_3}