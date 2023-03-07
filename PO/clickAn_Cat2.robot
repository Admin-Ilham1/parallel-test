*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/clickAn.py

*** Keywords ***
click an Cables et fils electrique-Fils de cable
                  [Arguments]           ${Categories}       ${Câbles_fils}      ${FILS_CABLE0}
                  click element       ${Categories}
                  sleep       5
                  mouse down          ${Câbles_fils}
                  sleep       4
                  click element       ${FILS_CABLE0}
                  sleep     5
