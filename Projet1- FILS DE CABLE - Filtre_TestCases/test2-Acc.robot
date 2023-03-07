*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Resource                   ../PO/resources.robot
Resource                   ../PO/test2-Acc-filtre.robot
*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${Fabricant}        2
${Couleur}          1
${Isolation}        1
${Le_type}          1
${Matériau_conducteur}  1
${Mesure_du_fil}        1
${Taille_Dimension}     1
${Température}          1
${Tension}              1

*** Test Cases ***
Cables et fils electrique-Fils de cable
                            open the browser with URL
                            clicker sur Cables et fils electrique - Fils de cable       ${Câbles_fils_electrique1}       ${FILS_DE_CABLE1}
                            filtrer les produits by attribute                           ${Fabricant}       ${Couleur}        ${Isolation}       ${Le_type}      ${Matériau_conducteur}     ${Mesure_du_fil}        ${Taille_Dimension}      ${Température}     ${Tension}




