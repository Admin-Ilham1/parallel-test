*** Settings ***
Documentation       Details de commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn_Acc.robot
Resource            ../PO/Choose4.robot
Resource            ../PO/CommandePage4.robot

*** Test Cases ***
Details de commande_commande Non-valide
                   resources.open the browser with URL
                   clickAn_Acc.Click an Cables et fils electrique-Fils de cable             ${Câbles_fils1}      ${FILS_CABLE}
                   Choose4.clicker sur un produit et passer la commande          ${clicker_Produit}     ${Ajout_Panier}        ${Commanderr}
                   CommandePage4.entrer les details de la commande                                  ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}
                   CommandePage4.Wait until it checks               ###msg afficher : Veuillez lire et accepter les conditions générales pour poursuivre votre commande.


