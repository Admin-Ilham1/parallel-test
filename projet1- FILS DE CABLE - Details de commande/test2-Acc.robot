*** Settings ***
Documentation       Details de commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn_Acc.robot
Resource            ../PO/Choose2.robot
Resource            ../PO/CommandePage2.robot


*** Test Cases ***
Details de commande_commande Non-valide
                   open the browser with URL
                   clickAn_Acc.Click an Cables et fils electrique-Fils de cable           ${Câbles_fils1}      ${FILS_CABLE}
                   Choose2.choisir un produit et passer directement la commande      ${Ajout_Panier}     ${Commander1}        ${Détails_de_facturation}
                   CommandePage2.entrer les details de la commande - valeurs incorrectes             ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}
                   CommandePage2.Wait until it checks and display -Commande non Valide-
