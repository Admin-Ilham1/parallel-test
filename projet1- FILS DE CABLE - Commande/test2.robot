*** Settings ***
Documentation       Cables et fils electrique-Fils de cable_Partie de Commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn.robot
Resource            ../PO/choose2.robot
Resource            ../PO/CommandePage.robot

*** Test Cases ***
Cables et fils electrique-Fils de cable
                resources.open the browser with URL
                clickAn.click an Cables et fils electrique-Fils de cable            ${Categories}       ${Câbles_fils}      ${FILS_CABLE}
                choose2.choisir un produit et passer directement la commande                ${Ajout_Panier}     ${Commander1}        ${Détails_de_facturation}
                CommandePage.valider la commande                                    ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}



