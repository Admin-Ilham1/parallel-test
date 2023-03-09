*** Settings ***
Documentation       Alimentation-Transformateurs_Partie de commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn-Transf.robot
Resource            ../PO/Choose-Transf.robot
Resource            ../PO/CommandePage.robot


*** Test Cases ***
Alimentationa-Transformateurs
                resources.open the browser with URL
                clickAn-Transf.clicker sur alimentations-Transformateurs           ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                Choose-Transf.choisir un produit et l ajouter directement dans le panier + Voir le panier (2 produits)              ${Ajout_Panier_Trans}     ${Voir_panier}       ${Ajouter_nbr_produit}     ${Mettre_à_jour_panier}      ${Panier_mis_à_jour}      ${Valider_Commande}       ${Détails_de_facturation}
                CommandePage.valider la commande                    ${Prénom}     ${Nom}       ${Nom_d_entreprise}     ${Numéro_nom_de_rue}      ${Ville}      ${Région_Département}       ${Code_postal}       ${Téléphone}        ${E_mail}

