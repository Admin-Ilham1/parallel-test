*** Settings ***
Documentation       Alimentationa-Transformateurs_Partie des filtres
Library             SeleniumLibrary
Resource                   ../PO/resources.robot
Resource                  ../PO/test1-filtre_Transformateurs.robot

*** Test Cases ***
Alimentationa-Transformateurs
                    resources.open the browser with URL
                    test1-filtre_Transformateurs.clicker sur alimentations-Transformateurs           ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                    test1-filtre_Transformateurs.filtrer les produits by attribute                    ${Fabricant}       ${Courant_sortie_Max}        ${Fréquence_de_fonctio_Max}       ${Fréquence_de_fonctio_Min}      ${Nombre_de_sortie}     ${Puissance}        ${Température_de_foncti}       ${Tension_sortie}

