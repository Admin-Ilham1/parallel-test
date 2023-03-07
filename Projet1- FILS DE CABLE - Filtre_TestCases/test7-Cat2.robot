*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Resource                   ../PO/resources.robot
Resource                   ../PO/test7-Cat2-filtre.robot


*** Test Cases ***
Alimentations-Batteries
                            open the browser with URL
                            clicker sur Cables et fils electrique - Fils de cable           ${Categories}      ${Câbles_fils_electrique}       ${FILS_DE_CABLE0}
                            filtrer les produits by attribute                               ${Fabricant}       ${Couleur}        ${Isolation}       ${Le_type}      ${Matériau_conducteur}     ${Mesure_du_fil}        ${Taille_Dimension}      ${Température}     ${Tension}
