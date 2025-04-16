*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-02/keywords_Testcase_1-02.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/AMLO Variables.robot
Resource    ../../../Resources/Menu_name/AML/ยื่นคำร้อง Manual/ปปง1-02/ปปง1-02_va.robot
Resource    ../../../Resources/Menu_name//AML/ViewAlert รายงาน ปปง/keywordการค้นหา.robot
Resource    ../../../Resources/Menu_name//AML/ViewAlert รายงาน ปปง/varการค้นหา.robot
Resource    ../../../Resources/Menu_name/AML/ViewAlert รายงาน ปปง/keywordการค้นหา.robot

Documentation       ทดสอบการยื่นคำร้อง manual ของ ปปง.1-02 กรณี ยื่นคำร้องเอง
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
${วันที่ทำธุระกรรม(dd/MM/yyyy)}     01/01/2567
${รายละเอียดทรัพย์สิน}      test
${มูลค่าทรัพย์สินที่ทำธุรกรรมทั้งสิ้น}      3000000
${เลขที่บัญชีที่ทำธุรกรรม}      0129304304056
${ัญชีที่ทำธุรกรรม_ชื่อบัญชี}   สวยสุด
${คำนำหน้าส่วน3.4}    นาย
${ชื่อ3.4}   หล่อ
${นามสกุล3.4}   มากมาก
${เลือกวัตถุประสงค์ของการทำธุรกรรม}    ฝากเงินเพื่อรับดอกเบี้ย
${ระบุเหตุผลเลือกวัตถุประสงค์ของการทำธุรกรรม}   TEST
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการยื่นคำร้อง manual ของ ปปง.1-02 กรณี ยื่นคำร้องเอง
        Enteropen web IBank & Login
        Run Keyword And Ignore Error        ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
2.เลือก AML & ยื่นคำร้อง


        Select the Submit Request menu

3.เลือกรายการ_ปปง1-02

        เลือกรายการ_ปปง1-02

4.รายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

        ยื่นคำร้องรายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

5.ส่วนที่1
        สุ่มเลขบัตร13หลัก
        ใช้งานเลขบัตร
        ส่วนที่1 ระบุข้อมูล(ทำธุรกรรมด้วยตนเอง)
        ส่วนที่1 บันทึกและไปหน้าถัดไป
6.ส่วนที่2
        ส่วนที่2 ถัดไป
7.ส่วนที่3 ระบุข้อมูล
        ส่วนที่ 3 ระบุข้อมูล(ขายฝาก/ที่ดิน)
        ส่วนที่ 3 3.4บุคคลธรรมดา
        ส่วนที่ 3 3.7รัตถุประสงค์ของการทำธุรกรรม
        ส่วนที่ 3 บันทึกข้อมูล
        ส่วนที่ 3 ข้ออนุมัติ


จบการทำงาน
        จบการทำงาน