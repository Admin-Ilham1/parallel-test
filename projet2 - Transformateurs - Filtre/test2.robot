*** Settings ***
Documentation       Alimentationa-Transformateurs_Partie des filtres
Library             SeleniumLibrary
Resource            resources.robot
Resource                  ../PO/test2-filtre_Transformateurs.robot

*** Test Cases ***
Alimentationa-Transformateurs
                    open the browser with URL
                    test2-filtre_Transformateurs.clicker sur alimentations-Transformateurs           ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                    test2-filtre_Transformateurs.filtrer les produits by attribute                   ${Courant_sortie_Max}        ${Fréquence_de_fonctio_Max}       ${Fréquence_de_fonctio_Min}      ${Nombre_de_sortie}     ${Taille_Dimension}        ${Tension_d_entrée_Max}       ${Tension_d_entrée_Min}        ${Tension_sortie1}

