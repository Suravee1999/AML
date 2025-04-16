*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot
Resource     varการค้นหา.robot

*** Keywords ***
กดปุ่มตกลง
    Sleep    3s
    Wait Until Element Is Visible    ${ปุ่มตกลง}    5s
    Click Element    ${ปุ่มตกลง}

ค้นหารายงานด้วย CIF
    Input Text    ${ค้นหาCIF}    ${CIF}
    Sleep    2s
    Wait Until Element Is Visible    ${ปุ่มค้นหา}  5s
    Click Element    ${ปุ่มค้นหา}
    Sleep    2s
เลือกอนุมัติรายการ
    Click Element    ${ปุ่มApprove}
    Click Element    ${ปุ่มอนุมัติ}
    Click Element    ${ปุ่มยืนยัน}
    Click Element    ${ปุ่มตกลง}

เลือกส่งกลับคืนเพื่อแก้ไข

    Click Element    ${ปุ่มApprove}
    Click Element    ${ปุ่มส่งกลับไปแก้ไข}
    Input Text    ${เหตุผลการส่งกลับ_xpath}    ${เหตุผลการส่งกลับ}
    Click Element    ${ปุ่มตกลง}
    Click Element    ${ปุ่มตกลง}
