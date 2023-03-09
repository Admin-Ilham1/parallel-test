*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
#${Browser}          Chrome
#${URL}              http://192.168.31.31/
${Fabricant}       1
${Courant_sortie_Max}      1
${Fréquence_de_fonctio_Max}       1
${Fréquence_de_fonctio_Min}      1
${Nombre_de_sortie}     1
${Puissance}        1
${Température_de_foncti}       1
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
                    [Arguments]         ${Fabricant}       ${Courant_sortie_Max}        ${Fréquence_de_fonctio_Max}       ${Fréquence_de_fonctio_Min}      ${Nombre_de_sortie}     ${Puissance}        ${Température_de_foncti}       ${Tension_sortie1}
                    select from list by index         ${Fabricant2}             ${Fabricant}
                    sleep       6
                    select from list by index          ${Courant_sortie_Max2}       ${Courant_sortie_Max}
                    sleep       5
                    select from list by index       ${Fréquence_de_fonctio_Max2}              ${Fréquence_de_fonctio_Max}
                    sleep       5
                    select from list by index         ${Fréquence_de_fonctio_Min2}           ${Fréquence_de_fonctio_Min}
                    sleep       5
                    select from list by index          ${Nombre_de_sortie2}                  ${Nombre_de_sortie}
                    sleep       5
                    select from list by index         ${Puissance2}                  ${Puissance}
                    sleep       5
                    #select from list by index       xpath://body/div[@id='wrapper']/main[@id='main']/div[1]/div[1]/div[1]/aside[1]/div[2]/div[7]/div[2]/select[1]
                    #sleep       5
                    select from list by index                        ${Température_de_foncti2}             ${Température_de_foncti}
                    sleep       5
                    select from list by index                           ${Tension_sortie2}                ${Tension_sortie1}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUITS_1}
                    sleep       5







