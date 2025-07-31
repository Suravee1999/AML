*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/CDD & EDD/CDD/CDD Va.robot
Resource    ../../../Resources/Menu_name/CDD & EDD/CDD/CDD_keyword.robot
#Resource    ../../Resources/Menu_name/CDD & EDD/CDD Review Alert/
Resource    ../../../Resources/Menu_name/CDD & EDD/CDD&EDD Variables.robot

Documentation       ทดสอบการทำงาน TC_CDD_Search_002
*** Variables ***
${เลขที่บัตร}   1234567891
${CIF}      2222
${ชื่อลูกค้า}   ห้างหุ้นส่วนจำกัดกาญจน์สิริปิโตรเลียม


*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการแสดงหน้าเว็ปและการเข้าสู่ระบบ
        Enteropen web IBank & Login
        เข้าด้วยUserระดับฝ่ายกำกับพนักงาน
2.เลือก CDD
        [Documentation]     เข้าเมนู CDD
         เข้าเมนู CDD &ประวัติ review
3.เข้าเมนู CDD ประวัติ review
        ค้นหาด้วยชื่อลูกค้า_เลขที่บัตร_CIF
จบการทำงาน
        จบการทำงาน

