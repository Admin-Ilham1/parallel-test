*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/Locators.py

*** Keywords ***
clicker sur alimentations-Transformateurs
                  [Arguments]           ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                  #Maximize Browser Window
                  click element       ${Categories}
                  sleep       5
                  click element       ${Alimentations}
                  sleep       5
                  click element       ${TRANSFORMATEURS}
                  sleep     5
