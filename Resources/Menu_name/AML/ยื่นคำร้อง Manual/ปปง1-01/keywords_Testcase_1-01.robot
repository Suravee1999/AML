*** Settings ***
Library     SeleniumLibrary
Resource    ปปง1-01_va.robot
Resource    ../AMLO Variables.robot

*** Variables ***
${text:test}      test


*** Keywords ***

Select the Submit Request menu

        Click Element    ${AML-ไทย}
        Click Element    ${ยื่นคำร้องManual}
        
เลือกรายการ_ปปง1-01
        Click Element    ${ประเภทรายงาน}
        Click Element    ${ปปง.1-01}
#*******************************************************************
ยื่นคำร้องอื่นๆ & ไม่ใช่ลูกค้าธนาคาร
        Click Element    ${รายงานเนื่องจาก_รายงานตัวช้า}
        Click Element    ${รายงานเนื่องจาก_อื่นๆ}
        Input Text    ${รายงานเนื่องจาก_อื่นๆ_ระบุ}    ${text:test}
        Click Element    ${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_ไม่ใช้ลูกค้าธนาคาร}
        Click Element    ${ยื่นคำร้องManual_ถัดไป}
        
ยื่นคำร้องรายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

        Click Element    ${รายงานเนื่องจาก_รายงานตัวช้า}
        Click Element    ${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_ไม่ใช้ลูกค้าธนาคาร}
        Click Element    ${ยื่นคำร้องManual_ถัดไป}

#*******************************************************************
ส่วนที่1 ระบุข้อมูล
        Input Text    ${เหตุผลการรายงาน Mannual_เหตุผลในการรายงาน}    ${เหตุผลในการรายงาน}
        Click Element    ${1.1_คำนำหน้าชื่อ}
        Click Element    ${1.1_คำนำหน้าชื่อ_เลือก}
        Input Text    ${1.1_ชื่อ}    ${ชื่อ}
        Input Text    ${1.1_นามสกุล}    ${นามสกุล}
        Input Text    ${1.1_เอกสารประจำตัว_เลขที่}    ${เลขที่บัตร}
        Click Element    ${1.1_เอกสารประจำตัว_ทำธุรกรรมด้วยตนเอง}
        Input Text    ${1.2_ที่อยู่}    ${ที่อยู่}
        Click Element    ${1.2_ประเทศ}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ไทย}
        Click Element    ${1.2_ที่อยู่_ประเทศ_จังหวัด}
        Click Element    ${1.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}
        Click Element    ${1.2_ที่อยู่_ประเทศ_อำเภอ}
        Click Element    ${1.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ตำบล}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ตำบล_เลือก}
        Input Text    ${1.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}    ${รหัสไปรษณีย์}
        Click Element    ${1.3อาชีพ}
        Click Element    ${1.3อาชีพ_เลือก}
        Input Text    ${1.5_เลขที่}    ${เลขที่บัตร2}
ส่วนที่1 บันทึกและไปหน้าถัดไป
        Click Element    ${ส่วนที่1_บีนทึก}
        Sleep    3s
        Click Element    ${ส่วนที่1_ถัดไป}