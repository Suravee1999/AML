*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${ CDD & EDD }     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'CDD & EDD')]]
${CDD Review Alert}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'CDD Review Alert')]
${EDD Alert}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'EDD Alert')]
${ประวัติ CDD review}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ประวัติ CDD review')]
${ประวัติ EDD review}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ประวัติ EDD review')]

*** Keywords ***
