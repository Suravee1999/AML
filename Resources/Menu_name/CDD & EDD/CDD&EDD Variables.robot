*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${CDD & EDD}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'CDD & EDD')]]
${CDD Review Alert}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'CDD Review Alert')]
${EDD Alert}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'EDD Alert')]
${ประวัติ CDD review}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ประวัติ CDD review')]
${ประวัติ EDD review}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ประวัติ EDD review')]




*** Keywords ***
เข้าเมนู CDD
        Wait Until Element Is Visible    ${CDD & EDD}
        Click Element    ${CDD & EDD}
        Click Element    ${CDD Review Alert}

เข้าเมนูCDD Review Alert
        Wait Until Element Is Visible    ${CDD Review Alert}
        Click Element    ${CDD Review Alert}


เข้าเมนู CDD &ประวัติ review
        Wait Until Element Is Visible    ${CDD & EDD}
        Click Element    ${CDD & EDD}
        Wait Until Element Is Visible    ${ประวัติ CDD review}
        Click Element    ${ประวัติ CDD review}

CDD ประวัติ review
        Wait Until Element Is Visible    ${ประวัติ CDD review}
        Click Element    ${ประวัติ CDD review}
   ####################################################
เข้าเมนู EDD
        Wait Until Element Is Visible    ${CDD & EDD}
        Click Element    ${CDD & EDD}
        Click Element    ${EDD Alert}


เข้าเมนูEDD Alert
        Wait Until Element Is Visible    ${EDD Alert}
        Click Element    ${EDD Alert}