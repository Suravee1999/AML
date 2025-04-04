*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-03/keywords_Testcase_1-03.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/AMLO Variables.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-03/ปปง1-03_va.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-03/keywords_Testcase_1-03.robot

*** Variables ***
${เหตุผลในการรายงาน}        test
${คำนำหน้า}  นาย
${ชื่อ}   เทส
${นามสกุล}   สุดหล่อ
#${เลขที่บัตร}   1234567890123
${ที่อยู่}  เทส
${companyProvince}    กรุงเทพมหานคร
${companyDistrict}    เขตจตุจักร
${companySubdistrict}    จตุจักร
${รหัสไปรษณีย์}     21229
${เลือกอาชีพ}     อาชีพอิสระ
${เลขที่บัตร2}     0987654321123
#************************ส่วน2*************************
${คำนำหน้า_ส่วน2}  นาย
${ชื่อ_ส่วน2}   เทส
${นามสกุล_ส่วน2}   สุดหล่อ
${เลขที่บัตร_ส่วน2}   1234567890124
${ที่อยู่_ส่วน2}  เทส
${companyProvince_ส่วน2}    กรุงเทพมหานคร
${companyDistrict_ส่วน2}    เขตจตุจักร
${companySubdistrict_ส่วน2}    จตุจักร
${รหัสไปรษณีย์_ส่วน2}     21229
${เลือกอาชีพ_ส่วน2}     อาชีพอิสระ
${เลขที่บัตร2_ส่วน2}     0987654321124
#************************ส่วน3*************************
${เหตุผลประกอบการพิจารณา}     test
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการยื่นคำร้อง manual ของ ปปง.1-03 กรณี ยื่นคำร้องเอง
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
2.เลือก AML & ยื่นคำร้อง
        Select the Submit Request menu

3.เลือกรายการ_ปปง1-03

        เลือกรายการ_ปปง1-03

4.รายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

        ยื่นคำร้องรายงานล่าช้า & พบพฤติกรรม &ไม่ใช่ลูกค้าธนาคาร

5.ส่วนที่1
        สุ่มเลขบัตร13หลัก
        ใช้งานเลขบัตร
        ส่วนที่1 ระบุข้อมูล(ทำธุรกรรมด้วยตนเอง)
        ส่วนที่1 บันทึกและไปหน้าถัดไป
6.ส่วนที่2
        ส่วนที่2 ถัดไป
7.รายงาน
        ส่วนที่ 3 ไม่พบความผิดปกติ
        ส่วนที่ 3 ข้ออนุมัติ
จบการทำงาน
        จบการทำงาน