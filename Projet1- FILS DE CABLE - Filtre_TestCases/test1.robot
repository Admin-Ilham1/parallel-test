*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Resource                   ../PO/resources.robot
Resource                   ../PO/test1-filtre.robot


*** Test Cases ***
Cables et fils electrique-Fils de cable
        resources.open the browser with URL
        test1-filtre.clicker sur Cables et fils electrique - Fils de cable       ${Categories}       ${Câbles_fils_electrique}        ${FILS_DE_CABLE}
        test1-filtre.filtrer les produits by attribute                            ${Fabricant}       ${Couleur}        ${Isolation}       ${Le_type}      ${Matériau_conducteur}     ${Mesure_du_fil}        ${Taille_Dimension}      ${Température}     ${Tension}




