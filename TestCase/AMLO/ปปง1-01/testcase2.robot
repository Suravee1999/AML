*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-01/keywords_Testcase_1-01.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/AMLO Variables.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-01/ปปง1-01_va.robot

*** Variables ***

*** Test Cases ***
1.open web IBank & Login

        Enteropen web IBank & Login

2.เลือก AML & ยื่นคำร้อง
        ยืนยันการเข้าระบบ
        Select the Submit Request menu

3.เลือกรายการ_ปปง1-01

        เลือกรายการ_ปปง1-01

4.ยื่นคำร้องอื่นๆ & ไม่ใช่ลูกค้าธนาคาร

        ยื่นคำร้องอื่นๆ & ไม่ใช่ลูกค้าธนาคาร

