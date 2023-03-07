*** Settings ***
Documentation       Cables et fils electrique-Fils de cable_Partie de Commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn_Acc.robot
Resource            ../PO/choose3.robot
Resource            ../PO/CommandePage.robot

*** Test Cases ***
Cables et fils electrique-Fils de cable
                resources.open the browser with URL
                clickAn_Acc.click an Cables et fils electrique-Fils de cable          ${Câbles_fils1}      ${FILS_CABLE}
                choose3.clicker sur un produit et voir le panier            ${clicker_Produit}     ${Ajout_Panier}        ${Voirr_Panier}       ${Valider_Commande}
                CommandePage.valider la commande                               ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}

