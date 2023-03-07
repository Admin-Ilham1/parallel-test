*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${Fabricant}    1
${Couleur}      1
${Isolation}        1
${Le_type}      1
${Matériau_conducteur}      1
${Mesure_du_fil}        1
${Taille_Dimension}     1
${Température}      1
${Tension}      1


*** Keywords ***
clicker sur Cables et fils electrique - Fils de cable
                            [Arguments]         ${Câbles_fils_electrique1}        ${FILS_DE_CABLE1}
                            click element       ${Câbles_fils_electrique1}            #xpath://header/div[1]/div[2]/div[1]/div[1]/ul[1]/li[2]/div[2]/div[1]/ul[1]/li[2]/a[1]
                            sleep       5
                            click element       ${FILS_DE_CABLE1}                        #css:body.page-template-default.page.page-id-837.theme-flatsome.woocommerce-js.yith-wcan-pro.lightbox.nav-dropdown-has-shadow.nav-dropdown-has-border.page-template-blank.page-template-blank-php:nth-child(2) div.content-area section.section:nth-child(3) div.section-content.relative:nth-child(2) div.row div.col.medium-4.small-12.large-4:nth-child(3) div.col-inner.box-shadow-3:nth-child(1) div.row.row-collapse div.col.medium-8.large-8:nth-child(2) div.col-inner h3:nth-child(2) > a:nth-child(1)
                            sleep       5

filtrer les produits by attribute
                            [Arguments]         ${Fabricant}       ${Couleur}        ${Isolation}       ${Le_type}      ${Matériau_conducteur}     ${Mesure_du_fil}        ${Taille_Dimension}      ${Température}     ${Tension}
                            select from list by index       ${Fabricant1}       ${Fabricant}
                            sleep       7
                            select from list by index       ${Couleur1}         ${Couleur}
                            sleep       7
                            select from list by index       ${Isolation1}       ${Isolation}
                            sleep        7
                            select from list by index       ${Le_type1}          ${Le_type}
                            sleep       7
                            select from list by index       ${Matériau_conducteur1}      ${Matériau_conducteur}
                            sleep        7
                            select from list by index       ${Mesure_du_fil1}            ${Mesure_du_fil}
                            sleep       7
                            select from list by index       ${Taille_Dimension1}         ${Taille_Dimension}
                            sleep       7
                            select from list by index       ${Température1}             ${Température}
                            sleep       7
                            select from list by index       ${Tension1}                 ${Tension}
                            sleep       7
                            click element                   ${Filtre_Button}
                            sleep       7
                            wait until element is visible   ${Produit_1}