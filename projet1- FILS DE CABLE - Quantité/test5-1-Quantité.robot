*** Settings ***
Documentation       Cables et fils electrique-Fils de cable_Partie de Commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn.robot
Resource            ../PO/Choose5-1_Quantite.robot


*** Test Cases ***
Cables et fils electrique-Fils de cable
                resources.open the browser with URL
                clickAn.click an Cables et fils electrique-Fils de cable             ${Categories}       ${Câbles_fils}      ${FILS_CABLE}
                Choose5-1_Quantite.clicker sur un produit et voir le panier             ${clicker_Produit}     ${Ajout_Panier}        ${Voirr_Panier}
                Choose5-1_Quantite.Eliminer le produit (0 Produits)                     ${Soustracter_nbr_produit}    ${Mettre_à_jour_panier}      ${Retour_à_la_boutique}


