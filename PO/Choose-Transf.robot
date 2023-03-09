*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
choisir un produit et l ajouter directement dans le panier + Voir le panier (2 produits)
                [Arguments]         ${Ajout_Panier_Trans}     ${Voir_panier}       ${Ajouter_nbr_produit}     ${Mettre_à_jour_panier}      ${Panier_mis_à_jour}      ${Valider_Commande}       ${Détails_de_facturation}
                  sleep       5
                  click element           ${Ajout_Panier_Trans}
                  sleep       5
                  click element           ${Voir_panier}
                  sleep       5
###Ajouter un produit
                  click element           ${Ajouter_nbr_produit}
                  sleep       7
                  click element          ${Mettre_à_jour_panier}
                  sleep       5
                  wait until element is visible       ${Panier_mis_à_jour}
###Valider-Commande
                  sleep     5
                  click element                   ${Valider_Commande}
                  wait until element is visible       ${Détails_de_facturation}
                  sleep       5