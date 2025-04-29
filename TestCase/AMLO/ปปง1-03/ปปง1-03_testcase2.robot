*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-03/keywords_Testcase_1-03.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/AMLO Variables.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-03/ปปง1-03_va.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-03/keywords_Testcase_1-03.robot
Resource    ../../../Resources/Menu_name//AML/ViewAlert รายงาน ปปง/keywordการค้นหา.robot
Resource    ../../../Resources/Menu_name//AML/ViewAlert รายงาน ปปง/varการค้นหา.robot
Resource    ../../../Resources/Menu_name/AML/ViewAlert รายงาน ปปง/keywordการค้นหา.robot

*** Variables ***
${รายงานเนื่องจาก_อื่นๆ}    test
${เหตุผลในการรายงาน}        test
${คำนำหน้า}  นาย
${ชื่อ}   ลองเทส
${นามสกุล}   สุดหล่อ
#${เลขที่บัตร}   1234567890123
${ที่อยู่}  เทส
${companyProvince}    กรุงเทพมหานคร
${companyDistrict}    เขตจตุจักร
${companySubdistrict}    จตุจักร
${รหัสไปรษณีย์}     21229
${เลือกอาชีพ}     อาชีพอิสระ
${เลขที่บัตร2}     0987654321123
${เหตุผลประกอบการพิจารณา}     test

${เหตุผลการส่งกลับ}      test
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการยื่นคำร้อง manual ของ ปปง.1-03 กรณี ยื่นคำร้องเอง
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up

2.เลือก AML & ยื่นคำร้อง
        เมนู AML ยื่นคำร้องManual

3.เลือกรายการ_ปปง1-03

        เลือกรายการ_ปปง1-03

4.รายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

        ยื่นคำร้องรายงานล่าช้า & พบพฤติกรรม &ไม่ใช่ลูกค้าธนาคาร

5.ส่วนที่1
        เรียกเลขบัตร
        ส่วนที่1 ระบุข้อมูล(ทำธุรกรรมด้วยตนเอง)
        ส่วนที่1 บันทึกและไปหน้าถัดไป
6.ส่วนที่2
        ส่วนที่2 ถัดไป
7.รายงาน
        เก็บรหัสCIF
        ส่วนที่ 3 พบความผิดปกติ
        ส่วนที่ 3 บันทึกข้อมูล
        ส่วนที่ 3 ข้ออนุมัติ

8.เปลี่ยนUserอนุมัติข้อมูล
        กดปุ่มตกลง
        ออกจากระบบ
        เข้าUserหัวหน้าอนุมัติข้อมูล
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up

9.เลือกรายการ
        เลือกเมนูView Alert รายงาน ปปง. 1-01, 1-02, 1-03, 1-05-9
        ค้นหารายงานด้วย CIF
10.อนุมัติรายการ
        เลือกส่งกลับคืนเพื่อแก้ไข
จบการทำงาน
        จบการทำงาน