*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${KYC-ไทย}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'KYC-ไทย')]]
${ยืนยันตัวตน}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ยืนยันตัวตน')]
${รายงานผลยืนยันตัวตน}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'รายงานผลยืนยันตัวตน')]

*** Keywords ***
