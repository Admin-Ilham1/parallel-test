*** Settings ***
Documentation       Alimentationa-Transformateurs_Partie de commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn-Transf.robot
Resource            ../PO/Choose2-Transf.robot
Resource            ../PO/CommandePage.robot

*** Test Cases ***
Alimentationa-Transformateurs
                resources.open the browser with URL
                clickAn-Transf.clicker sur alimentations-Transformateurs           ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                Choose2-Transf.choisir un produit et passer directement la commande     ${Ajout_Panier_Trans}     ${Commander1}        ${Détails_de_facturation}
                CommandePage.valider la commande                 ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}


