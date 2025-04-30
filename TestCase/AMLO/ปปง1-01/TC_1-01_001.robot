*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-01/keywords_Testcase_1-01.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/AMLO Variables.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-01/ปปง1-01_va.robot
Resource    ../../../Resources/Menu_name//AML/ViewAlert รายงาน ปปง/keywordการค้นหา.robot
Resource    ../../../Resources/Menu_name//AML/ViewAlert รายงาน ปปง/varการค้นหา.robot
Resource    ../../../Resources/Menu_name/AML/ViewAlert รายงาน ปปง/keywordการค้นหา.robot

*** Variables ***
${รายงานเนื่องจาก_อื่นๆ}    test
${เหตุผลในการรายงาน}        test
${คำนำหน้า}  นาย   #นาย , นาง , นางสาว
${ชื่อ}   เทส
${นามสกุล}   สุดหล่อ
#${เลขที่บัตร}   1234567890123  ใช้แบบ auto อยู่
${ที่อยู่}  เทส
${companyProvince}    กรุงเทพมหานคร         #จังหวัด
${companyDistrict}    เขตจตุจักร             #เขต
${companySubdistrict}    จตุจักร            #แขวง
${รหัสไปรษณีย์}     21229
${เลือกอาชีพ}     อาชีพอิสระ
${เลขที่บัตร2}     0987654321123
${วันที่ทำธุระกรรม(dd/MM/yyyy)}     01/01/2567
${ธุรกรรม}      ฝากเงิน
${เข้าบัญชีเลขที่(0/30)}    0928394034
${จำนวนเงิน(2,000,000)}     3000000

${เลือกวัตถุประสงค์ของการทำธุรกรรม}    ฝากเงินเพื่อรับดอกเบี้ย
${ระบุเหตุผลเลือกวัตถุประสงค์ของการทำธุรกรรม}   TEST
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการยื่นคำร้อง manual ของ ปปง.1-01 กรณี ยื่นคำร้องเอง
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
2.เลือก AML & ยื่นคำร้อง

        เมนู AML ยื่นคำร้องManual


