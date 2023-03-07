*** Settings ***
Documentation           Cables et fils electrique-Fils de cable_Details de commande
Library                 SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn_Cat2.robot
Resource            ../PO/Choose.robot
Resource            ../PO/CommandePage1.robot

*** Test Cases ***
Details de commande_commande valide
                   resources.open the browser with URL
                   clickAn_Cat2.Click an Cables et fils electrique-Fils de cable          ${Categories}       ${Câbles_fils}      ${FILS_CABLE0}
                   Choose.choisir un produit et l ajouter directement dans le panier + Voir le panier (2 produits)         ${Ajout_Panier}     ${Voir_panier}       ${Ajouter_nbr_produit}     ${Mettre_à_jour_panier}      ${Panier_mis_à_jour}      ${Valider_Commande}       ${Détails_de_facturation}
                   CommandePage1.entrer les details de la commande - valeurs correctes                                 ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}
                   CommandePage1.Wait until it checks and display -validation de la commande