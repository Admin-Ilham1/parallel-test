*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables               ../customLibraries/clickAn.py

*** Keywords ***
click an Cables et fils electrique-Fils de cable
                  [Arguments]               ${Câbles_fils1}      ${FILS_CABLE}
                  click element       ${Câbles_fils1}
                  sleep       5
                  click element       ${FILS_CABLE}
                  sleep     4
