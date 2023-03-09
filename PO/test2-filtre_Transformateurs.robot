*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Courant_sortie_Max}      2
${Fréquence_de_fonctio_Max}       1
${Fréquence_de_fonctio_Min}      1
${Nombre_de_sortie}     1
${Taille_Dimension}     1
${Tension_d_entrée_Max}        1
${Tension_d_entrée_Min}       1
${Tension_sortie1}       1


*** Keywords ***
clicker sur alimentations-Transformateurs
                            [Arguments]         ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                            click element       ${Categories}
                            sleep       5
                            click element       ${Alimentations}
                            sleep       5
                            click element       ${TRANSFORMATEURS}
                            sleep       5

filtrer les produits by attribute
                    [Arguments]         ${Courant_sortie_Max}        ${Fréquence_de_fonctio_Max}       ${Fréquence_de_fonctio_Min}      ${Nombre_de_sortie}     ${Taille_Dimension}        ${Tension_d_entrée_Max}       ${Tension_d_entrée_Min}        ${Tension_sortie1}
                    select from list by index           ${Courant_sortie_Max22}         ${Courant_sortie_Max}
                    sleep       6
                    select from list by index           ${Fréquence_de_fonctio_Max22}           ${Fréquence_de_fonctio_Max}
                    sleep       5
                    select from list by index           ${Fréquence_de_fonctio_Min22}           ${Fréquence_de_fonctio_Min}
                    sleep       5
                    select from list by index           ${Nombre_de_sortie22}                   ${Nombre_de_sortie}
                    sleep       5
                    select from list by index           ${Taille_Dimension22}                   ${Taille_Dimension}
                    sleep       5
                    select from list by index            ${Tension_d_entrée_Max22}               ${Tension_d_entrée_Max}
                    sleep       5
                    select from list by index            ${Tension_d_entrée_Min22}              ${Tension_d_entrée_Min}
                    sleep       5
                    select from list by index           ${Tension_sortie22}                     ${Tension_sortie1}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUITS_2}
                    sleep       3







