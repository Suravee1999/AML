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
${CIF}      121331212
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการยื่นคำร้อง manual ของ ปปง.1-03 กรณี ยื่นคำร้องเอง
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
2.เลือก AML & ยื่นคำร้อง
        Click Element    ${AML-ไทย}
        เลือกเมนูView Alert รายงาน ปปง. 1-01, 1-02, 1-03, 1-05-9

         เลือกอนุมัติรายการ
จบการทำงาน
        จบการทำงาน