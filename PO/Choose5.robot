*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
clicker sur un produit et passer la commande
                    [Arguments]         ${clicker_Produit}     ${Ajout_Panier}        ${Commanderr}
                  sleep       5
                  click element          ${clicker_Produit}
                  sleep       5
                  click element           ${Ajout_Panier}
                  sleep       3
                  click element           ${Commanderr}
                  sleep       5
