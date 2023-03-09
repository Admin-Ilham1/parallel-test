*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
choisir un produit et passer directement la commande
                [Arguments]         ${Ajout_Panier_Trans}     ${Commander1}        ${Détails_de_facturation}
                  sleep       7
                  click element           ${Ajout_Panier}
                  sleep       3
                  click element           ${Commander1}
                  sleep       6
                  wait until element is visible       ${Détails_de_facturation}
                  sleep       5