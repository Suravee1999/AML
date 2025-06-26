*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/SettingURL.robot
Resource    ../../Resources/UserLogin.robot
Resource    ../../Resources/main_keywords.robot
Resource    ../../Resources/Menu_name/CDD & EDD/CDD/CDD Va.robot
Resource    ../../Resources/Menu_name/CDD & EDD/CDD/CDD_keyword.robot
#Resource    ../../Resources/Menu_name/CDD & EDD/CDD Review Alert/
Resource    ../../Resources/Menu_name/CDD & EDD/CDD&EDD Variables.robot
*** Variables ***


*** Test Cases ***
เข้าระบบ
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
เข้าเมนู CDD
        เข้าเมนู CDD
