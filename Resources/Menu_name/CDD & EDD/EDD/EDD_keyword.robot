*** Settings ***
Library     SeleniumLibrary
Resource    EDD Va.robot

*** Variables ***



*** Keywords ***
ค้นหารายงานด้วย CIF
    Wait Until Element Is Visible    ${ค้นหาCIF}
    Input Text    ${ค้นหาCIF}    ${CIF}
    Sleep    1s
    Wait Until Element Is Visible    ${ปุ่มค้นหา_xpath}  5s
    Click Element    ${ปุ่มค้นหา_xpath}
    Sleep    1s

##########################   ซับเซทของ ปุ่ม แก้ไขข้อมูล     ##########################
Take Owner
        Wait Until Element Is Visible    ${ปุ่มTake Owner_xpath}
        Click Element    ${ปุ่มTake Owner_xpath}

Investigate
        Wait Until Element Is Visible    ${ปุ่มInvestigate_xpath}
        Click Element    ${ปุ่มInvestigate_xpath}

กดปุ่มตกลง
        Wait Until Element Is Enabled    ${ปุ่มตกลง_xpath}    timeout=10s
        Wait Until Element Is Visible    ${ปุ่มตกลง_xpath}    timeout=10s
        Click Element    ${ปุ่มตกลง_xpath}

ระบุเหตุผลในส่วนที่1
    Input Text    ${ไม่พบลูกค้า_xpath}    ${Track IDเลขที่}
##########################
กดปุ่มทำรายการ
        Run Keyword And Ignore Error    Take Owner
        Run Keyword And Ignore Error    Investigate
        Run Keyword And Ignore Error    กดปุ่มตกลง


ข้อมูลส่วนติดต่อลูกค้าได้
        Wait Until Element Is Visible    ${ติดต่อลูกค้าได้_xpath}
        Click Element     ${ติดต่อลูกค้าได้_xpath}
        Click Element    ${ติดต่อลูกค้าได้_เลือก_xpath}
        Run Keyword And Ignore Error    ระบุเหตุผลในส่วนที่1

ข้อมูลส่วนติดต่อลูกค้าไม่ได้
        Wait Until Element Is Visible    ${ติดต่อลูกค้าไม่ได้_xpath}
        Click Element     ${ติดต่อลูกค้าไม่ได้_xpath}
        Scroll Element Into View     ${ติดต่อลูกค้าไม่ได้_เลือก_xpath}
        Click Element    ${ติดต่อลูกค้าไม่ได้_เลือก_xpath}
#        Wait Until Element Is Visible    ${ไม่พบลูกค้า_xpath}
#        Wait Until Element Is Enabled    ${ไม่พบลูกค้า_xpath}
        Input Text    ${ไม่พบลูกค้า_xpath}    ${Track IDเลขที่}
        
        
ข้อมูลส่วนไม่ต้องติดต่อลูกค้า
        Wait Until Element Is Visible    ${ไม่ต้องติดต่อลูกค้าเนื่องจากเข้าข้อยกเว้น_xpath}
        Click Element     ${ไม่ต้องติดต่อลูกค้าเนื่องจากเข้าข้อยกเว้น_xpath}
        Click Element    ${ไม่ต้องติดต่อลูกค้าเนื่องจากเข้าข้อยกเว้น_เลือก_xpath}

บันทึกข้อมูล
        Wait Until Element Is Visible    ${ปุ่มบันทึก}
        Click Element    ${ปุ่มบันทึก}
        Run Keyword And Ignore Error    กดปุ่มตกลง
กดปุ่มถัดไป
        Wait Until Element Is Visible    ${ปุ่มถัดไป}
        Click Element    ${ปุ่มถัดไป}

ส่วนที่2ขอมูลถูกต้อง/คงเดิม
            Wait Until Element Is Visible    ${ข้อมูลถูกต้อง/คงเดิม_1}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_1}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_2}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_3}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_4}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_5}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_6}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_7}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_8}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_9}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_10}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_11}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_12}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_13}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_14}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_15}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_16}
            Wait Until Element Is Visible    ${ข้อมูลถูกต้อง/คงเดิม_17}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_17}
            Wait Until Element Is Visible    ${ข้อมูลถูกต้อง/คงเดิม_18}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_18}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_19}
            Capture Page Screenshot

ส่วนที่2แก้ไขข้อมูล
            สุ่มเบอร์โทรศัพท์
            Wait Until Element Is Visible    ${ข้อมูลถูกต้อง/คงเดิม_1}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_1}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_2}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_3}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_4}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_5}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_6}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_7}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_8}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_9}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_10}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_11}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_12}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_13}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_14}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_15}
            Click Element    ${ข้อมูลไม่ถูกต้อง_16}
            Wait Until Element Is Visible    ${แก้ข้อมูลเบอร์_xpath}
            Input Text    ${แก้ข้อมูลเบอร์_xpath}    ${phone_number}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_17}
            Click Element    ${ข้อมูลถูกต้อง/คงเดิม_18}

พบความผิดปกติ
        Wait Until Element Is Visible    ${พบความผิดปกติ_xpath}
        Scroll Element Into View    ${พบความผิดปกติ_xpath}
        Click Element    ${พบความผิดปกติ_xpath}
        Input Text    ${ความคิดเห็น_xpath}    ${ความคิดเห็น}
        Capture Page Screenshot
ไม่พบความผิดปกติ
         Wait Until Element Is Visible    ${ไม่พบความผิดปกติ_xpath}
        Click Element    ${ไม่พบความผิดปกติ_xpath}
        Input Text    ${ความคิดเห็น_xpath}    ${ความคิดเห็น}
        Capture Page Screenshot
ส่งไปขออนุมัติ
        Wait Until Element Is Visible    ${ส่งไปขออนุมัติ}
        Click Element    ${ส่งไปขออนุมัติ}
        Click Element    ${ปุ่มยืนยัน}
        Capture Page Screenshot
        Run Keyword And Ignore Error    กดปุ่มตกลง
        Run Keyword And Ignore Error    กดปุ่มตกลง


ส่งกลับไปแก้ไข
        Wait Until Element Is Visible    ${ส่งกลับไปแก้ไข}
        Click Element    ${ส่งกลับไปแก้ไข}
        Input Text    ${เหตุผลการส่งกลับ_xpath}    ${เหตุผล}
        Click Element    ${ปุ่มยืนยัน}
        Capture Page Screenshot
        Run Keyword And Ignore Error    กดปุ่มตกลง
        Run Keyword And Ignore Error    กดปุ่มตกลง

กดปุ่มอนุมัติการทำ EDD และยื่นคำร้อง 1-03
    Wait Until Element Is Visible    ${อนุมัติการทำ EDD และยื่นคำร้อง 1-03}
    Click Element    ${อนุมัติการทำ EDD และยื่นคำร้อง 1-03}
    Click Element    ${ปุ่มยืนยัน}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง
กดปุ่มอนุมัติการทำ EDD
    Wait Until Element Is Visible    ${อนุมัติการทำ EDD}
    Click Element    ${อนุมัติการทำ EDD}
    Click Element    ${ปุ่มยืนยัน}
    Run Keyword And Ignore Error    กดปุ่มตกลง
    Run Keyword And Ignore Error    กดปุ่มตกลง

กดปุ่มApprove
       Wait Until Element Is Visible    ${ปุ่มApprove}
       Click Element    ${ปุ่มApprove}
       Run Keyword And Ignore Error    กดปุ่มตกลง

สุ่มเบอร์โทรศัพท์
    ${prefix_list}=    Create List    06    08    09
    ${prefix}=    Evaluate    random.choice(${prefix_list})    modules=random
    ${suffix}=    Evaluate    ''.join([str(random.randint(0,9)) for _ in range(8)])    modules=random
    ${phone_number}=    Set Variable    ${prefix}${suffix}
    Set Suite Variable      ${phone_number}     ${phone_number}
    [Return]    ${phone_number}