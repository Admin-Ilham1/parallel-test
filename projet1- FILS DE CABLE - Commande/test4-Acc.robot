*** Settings ***
Documentation       Cables et fils electrique-Fils de cable_Partie de Commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn_Acc.robot
Resource            ../PO/choose4.robot
Resource            ../PO/CommandePage.robot

*** Test Cases ***
Cables et fils electrique-Fils de cable
                resources.open the browser with URL
                clickAn_Acc.click an Cables et fils electrique-Fils de cable         ${Câbles_fils1}      ${FILS_CABLE}
                choose4.clicker sur un produit et passer la commande            ${clicker_Produit}     ${Ajout_Panier}        ${Commanderr}
                CommandePage.valider la commande                               ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}


