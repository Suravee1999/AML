*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-01/keywords_Testcase_1-01.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/AMLO Variables.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-01/ปปง1-01_va.robot

*** Variables ***
${เหตุผลในการรายงาน}        test
${คำนำหน้า}  นาย
${ชื่อ}   เทส
${นามสกุล}   สุดหล่อ
${เลขที่บัตร}   1234567890123
${ที่อยู่}  เทส
${companyProvince}    กรุงเทพมหานคร
${companyDistrict}    เขตจตุจักร
${companySubdistrict}    จตุจักร
${รหัสไปรษณีย์}     21229
${เลือกอาชีพ}     อาชีพอิสระ
${เลขที่บัตร2}     0987654321123

*** Test Cases ***
1.open web IBank & Login

        Enteropen web IBank & Login

2.เลือก AML & ยื่นคำร้อง
        ยืนยันการเข้าระบบ
        Select the Submit Request menu

3.เลือกรายการ_ปปง1-01

        เลือกรายการ_ปปง1-01

4.รายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

        ยื่นคำร้องรายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

5.ส่วนที่1

        ส่วนที่1 ระบุข้อมูล
        ส่วนที่1 บันทึกและไปหน้าถัดไป
