*** Settings ***
Documentation       Alimentationa-Transformateurs_Partie de commande
Library             SeleniumLibrary
Resource            resources.robot

*** Test Cases ***
Alimentation DC-partie de commande
                open the browser with URL
                click an alimentation-Transformateurs
                clicker sur le produit et l ajouter dans le panier
                Ajouter 1 produit + mettre a jour le panier (3produits au total)                    ###
                valider la commande

*** Keywords ***
click an alimentation-Transformateurs
                 click element           xpath://span[contains(text(),'Categories')]
                 sleep       5
                 click element           xpath://header/div[1]/div[2]/div[1]/div[1]/ul[1]/li[2]/div[2]/div[1]/ul[1]/li[1]/a[1]
                 sleep       5
                 click element           css:body.page-template-default.page.page-id-775.theme-flatsome.woocommerce-js.yith-wcan-pro.lightbox.nav-dropdown-has-shadow.nav-dropdown-has-border.page-template-blank.page-template-blank-php:nth-child(2) div.content-area section.section:nth-child(3) div.section-content.relative:nth-child(2) div.row:nth-child(2) div.col.medium-4.small-12.large-4:nth-child(2) div.col-inner.box-shadow-3:nth-child(1) div.row.row-collapse div.col.medium-8.large-8:nth-child(2) div.col-inner h3:nth-child(2) > a:nth-child(1)

clicker sur le produit et l ajouter dans le panier
                 sleep      5
                 click element          xpath://a[contains(text(),'Transformateur myrra 230V 6V 800mA')]
                 click element          xpath://button[contains(text(),'Ajouter au panier')]
                 sleep      3
                 click element          xpath://header/div[1]/div[1]/div[1]/div[4]/ul[1]/li[3]/ul[1]/li[1]/div[1]/p[2]/a[1]

Ajouter 1 produit + mettre a jour le panier (3produits au total)
                sleep   5
                click element           xpath://tbody/tr[1]/td[5]/div[1]/input[3]
                click element           xpath://tbody/tr[1]/td[5]/div[1]/input[3]
                click button            xpath://button[contains(text(),'Mettre à jour le panier')]
                wait until element is visible           xpath://body/div[@id='wrapper']/main[@id='main']/div[2]/div[1]/div[1]/div[1]/div[1]
                click element           xpath://a[contains(text(),'Valider la commande')]
                sleep   5

valider la commande
                 input text                          xpath://input[@id='billing_first_name']                         Ilham
                 input text                          xpath://input[@id='billing_last_name']                          Brh
                 sleep       5
                 input text                          xpath://input[@id='billing_company']                            AB
                 sleep       5
                 input text                          xpath://input[@id='billing_address_1']                          Hay Nahda
                 input text                          xpath://input[@id='billing_city']                               Rabat
                 input text                          xpath://input[@id='billing_state']                              Rabat-Salé-Kénitra
                 input text                          xpath://input[@id='billing_postcode']                           20200
                 sleep       7
                 input text                          xpath://input[@id='billing_phone']                              0651780789
                 input text                          xpath://input[@id='billing_email']                              IlhamBrh1@gmail.com
                 sleep       5
                 click element                       xpath://input[@id='terms']
                 sleep   7
                 click button                        xpath://button[@id='place_order']
                 wait until element is visible       xpath://strong[contains(text(),'Merci. Votre commande a été reçue.')]
                 sleep       5