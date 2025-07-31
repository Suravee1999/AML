*** Settings ***
Library     SeleniumLibrary
Resource    CDD Va.robot

*** Variables ***



*** Keywords ***
ค้นหารายงานด้วยชื่อลูกค้า
    Input Text    ${ชื่อลูกค้า_xpath}    ${ชื่อลูกค้า}
    Sleep    1s
    Wait Until Element Is Visible    ${ปุ่มค้นหา_xpath}  5s
    Click Element    ${ปุ่มค้นหา_xpath}
    Sleep    1s
ค้นหารายงานด้วยเลขที่บัตร
    Input Text    ${เลขที่บัตร_xpath}    ${เลขที่บัตร}
    Sleep    1s
    Wait Until Element Is Visible    ${ปุ่มค้นหา_xpath}  5s
    Click Element    ${ปุ่มค้นหา_xpath}
    Sleep    1s
ค้นหารายงานด้วย CIF
    Input Text    ${ค้นหาCIF}    ${CIF}
    Sleep    1s
    Wait Until Element Is Visible    ${ปุ่มค้นหา_xpath}  5s
    Click Element    ${ปุ่มค้นหา_xpath}
    Sleep    1s
ค้นหาด้วยชื่อลูกค้า_เลขที่บัตร_CIF
        Input Text    ${เลขที่บัตร_xpath}    ${เลขที่บัตร}
        Input Text    ${ค้นหาCIF}    ${CIF}
        Input Text    ${ชื่อลูกค้า_xpath}    ${ชื่อลูกค้า}
    Sleep    1s
    Wait Until Element Is Visible    ${ปุ่มค้นหา_xpath}  5s
    Click Element    ${ปุ่มค้นหา_xpath}
    Sleep    1s
กดปุ่มล้างข้อมูล
        Click Element    ${ล้างข้อมูล_xpath}    
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
กดปุ่มทำรายการ
        Run Keyword And Ignore Error    Manual Detail
        Run Keyword And Ignore Error    Investigate
        Run Keyword And Ignore Error    กดปุ่มตกลง

กดปุ่มดูไม่ดูข้อมูล
        Wait Until Element Is Visible    ${ปุ่มดูข้อมูล_xpath}
        Click Element    ${ปุ่มดูข้อมูล_xpath}
ปรับระดับความเสียง
        Wait Until Element Is Visible    ${ปุ่มแก้ไขระดับความเสี่ยง_xpath}
        Click Element    ${ปุ่มแก้ไขระดับความเสี่ยง_xpath}
        Click Element    ${เลือกระดับความเสี่ยง_xpath}
        Click Element    ${ระดับความเสียง_xpath}

ระบุเหตุผล
        Input Text    ${ระบุเหตุผล_xpath}    ${เหตุผล}

ขออนุมัติ
    Wait Until Element Is Visible    ${ปุ่มส่งไปขออนุมัติ_xpath}
    Click Element    ${ปุ่มส่งไปขออนุมัติ_xpath}
    Wait Until Element Is Visible    ${ปุ่มยืนยัน_xpath}
    Click Element    ${ปุ่มยืนยัน_xpath}
    Capture Page Screenshot
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง
กดปุ่มอนุมัติ
    Wait Until Element Is Visible    ${ปุ่มอนุมัติ_xpath}
    Click Element    ${ปุ่มอนุมัติ_xpath}
    Wait Until Element Is Visible    ${ปุ่มยืนยัน_xpath}
    Click Element    ${ปุ่มยืนยัน_xpath}
    Capture Page Screenshot
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง
กดปุ่มApprove
       Wait Until Element Is Visible    ${ปุ่มApprove_xpath}
       Click Element    ${ปุ่มApprove_xpath}
       Run Keyword And Ignore Error    กดปุ่มตกลง

ส่งกลับไปแก้ไข
        Wait Until Element Is Visible    ${ส่งกลับไปแก้ไข}
        Click Element    ${ส่งกลับไปแก้ไข}
        Wait Until Element Is Visible    ${ปุ่มยืนยัน_xpath}
        Click Element    ${ปุ่มยืนยัน_xpath}
        Run Keyword And Ignore Error    กดปุ่มตกลง
        Run Keyword And Ignore Error    กดปุ่มตกลง