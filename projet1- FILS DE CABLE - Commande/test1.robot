*** Settings ***
Documentation       Cables et fils electrique-Fils de cable_Partie de Commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn.robot
Resource            ../PO/Choose.robot
Resource            ../PO/CommandePage.robot



*** Test Cases ***
Cables et fils electrique-Fils de cable
                resources.open the browser with URL
                clickAn.click an Cables et fils electrique-Fils de cable             ${Categories}       ${Câbles_fils}      ${FILS_CABLE}
                Choose.choisir un produit et l ajouter directement dans le panier + Voir le panier (2 produits)              ${Ajout_Panier}     ${Voir_panier}       ${Ajouter_nbr_produit}     ${Mettre_à_jour_panier}      ${Panier_mis_à_jour}      ${Valider_Commande}       ${Détails_de_facturation}
                CommandePage.valider la commande                          ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}






