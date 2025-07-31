*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot
Resource     varการค้นหา.robot

*** Keywords ***
#กดปุ่มตกลง
#    Sleep    3s
#    Wait Until Element Is Visible    ${ปุ่มตกลง}    5s
#    Click Element    ${ปุ่มตกลง}

ค้นหารายงานด้วย CIF
    Input Text    ${ค้นหาCIF}    ${CIF}
    Sleep    1s
    Wait Until Element Is Visible    ${ปุ่มค้นหา}  5s
    Click Element    ${ปุ่มค้นหา}
    Sleep    1s
    Capture Page Screenshot
##########################   ซับเซทของ ปุ่ม แก้ไขข้อมูล     ##########################
Manual Detail
        Wait Until Element Is Visible    ${ปุ่มManual Detail_xpath}
        Click Element    ${ปุ่มManual Detail_xpath}

Investigate
        Wait Until Element Is Visible    ${ปุ่มInvestigate_xpath}
        Click Element    ${ปุ่มInvestigate_xpath}

กดปุ่มตกลง
        Wait Until Element Is Enabled    ${ปุ่มตกลง_xpath}    timeout=10s
        Wait Until Element Is Visible    ${ปุ่มตกลง_xpath}    timeout=10s
        Click Element    ${ปุ่มตกลง_xpath}
##########################
กดปุ่มแก้ไขข้อมูล
        Run Keyword And Ignore Error    Manual Detail
        Run Keyword And Ignore Error    Investigate
        Run Keyword And Ignore Error    กดปุ่มตกลง

กดปุมถัดไป
         Wait Until Element Is Visible    ${ส่วนที่1_ถัดไป}
        Click Element    ${ส่วนที่1_ถัดไป}



เลือกอนุมัติรายการ
    Wait Until Element Is Visible    ${ปุ่มApprove}
    Click Element    ${ปุ่มApprove}
    Wait Until Element Is Visible    ${ปุ่มอนุมัติ}
    Click Element    ${ปุ่มอนุมัติ}
    Click Element    ${ปุ่มยืนยัน_xpath}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง

เลือกส่งกลับคืนเพื่อแก้ไข
    Wait Until Element Is Visible    ${ปุ่มApprove}
    Click Element    ${ปุ่มApprove}
    Wait Until Element Is Visible    ${ปุ่มส่งกลับไปแก้ไข}
    Click Element    ${ปุ่มส่งกลับไปแก้ไข}
    Wait Until Element Is Visible    ${เหตุผลการส่งกลับ_xpath}
    Input Text    ${เหตุผลการส่งกลับ_xpath}    ${เหตุผลการส่งกลับ}
    Click Element    ${ปุ่มตกลง_ส่งกลับ}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง

เลือกส่งขออนุมัติ
        Wait Until Element Is Visible    ${ปุ่มApprove}
    Click Element    ${ปุ่มApprove}
    Wait Until Element Is Visible    ${ส่งขออนุมัติ}
    Click Element    ${ส่งขออนุมัติ}
    Click Element    ${ปุ่มยืนยัน_xpath}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง

เลือกอนุมัติไม่รายงาน
    Wait Until Element Is Visible    ${ปุ่มApprove}
    Click Element    ${ปุ่มApprove}
    Scroll Element Into View    ${ไม่ต้องรายงาน_xpath}
    Wait Until Element Is Visible    ${ไม่ต้องรายงาน_xpath}
    Click Element                   ${ไม่ต้องรายงาน_xpath}
    Input Text    ${เหตุผลไม่รายงาน_xpath}    ${เหตุผลการส่งกลับ}
    Click Element    ${ปุ่มอนุมัติ}
    Click Element    ${ปุ่มยืนยัน_xpath}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง

เลือกขอยกเลิกรายงาน
    Wait Until Element Is Visible    ${ปุ่มApprove}
    Click Element    ${ปุ่มApprove}
    Scroll Element Into View    ${ไม่ต้องรายงาน_xpath}
    Wait Until Element Is Visible    ${ไม่ต้องรายงาน_xpath}
    Click Element                   ${ไม่ต้องรายงาน_xpath}
    Input Text    ${เหตุผลไม่รายงาน_xpath}    ${เหตุผลการส่งกลับ}
    Click Element    ${ส่งขออนุมัติ}
    Click Element    ${ปุ่มยืนยัน_xpath}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง