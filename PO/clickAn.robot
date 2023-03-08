*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/clickAn.py

*** Keywords ***
click an Cables et fils electrique-Fils de cable
                  [Arguments]           ${Categories}       ${Câbles_fils}      ${FILS_CABLE}
                  Maximize Browser Window
                  click element       ${Categories}
                  sleep       5
                  click element       ${Câbles_fils}
                  sleep       5
                  click element       ${FILS_CABLE}
                  sleep     5
