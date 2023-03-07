*** Settings ***
Documentation       Details de commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn.robot
Resource            ../PO/Choose3.robot
Resource            ../PO/CommandePage3.robot


*** Test Cases ***
Details de commande_commande Non-valide
                   open the browser with URL
                   clickAn.Click an Cables et fils electrique-Fils de cable          ${Categories}       ${Câbles_fils}      ${FILS_CABLE}
                   Choose3.clicker sur un produit et voir le panier       ${clicker_Produit}     ${Ajout_Panier}        ${Voirr_Panier}       ${Valider_Commande}
                   CommandePage3.entrer les details de la commande (tele - Email = Correcte)            ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}
                   CommandePage3.Wait until it checks and display -Commande non Valide-         ${Détails_de_facturation}





