*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${Watch List_menuXPATH}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'Watch List')]]
${Investigate Alert}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'Investigate Alert')]
${Watch List}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'Watch List')]


*** Keywords ***
