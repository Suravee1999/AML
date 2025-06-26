*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
เข้าMenu Investigate Alert
        Wait Until Element Is Visible    ${Watch List_menuXPATH}
        Click Element   ${Watch List_menuXPATH}
        Wait Until Element Is Visible    ${Watch List_menuXPATH}
        Click Element    ${Investigate Alert}


        
เข้าMenu Investigate Alert กรณีระบบไม่รีเฟสค่าหน้าจอ
       Wait Until Element Is Visible  ${Investigate Alert}
       Click Element    ${Investigate Alert}          
##########################
Take Owner
         Click Element    ${ปุ่มTake Owner_xpath}
         Click Element    ${ปุ่มยืนยัน_xpath}
Investigate
        Click Element    ${ปุ่มInvestigate _xpath}

กดปุ่มตกลง
        Wait Until Element Is Visible   ${ปุ่มตกลง_xpath}
        Click Element    ${ปุ่มตกลง_xpath}
##########################

ค้นหาเลข CIF
        Input Text    ${CIFNO_xpath}    ${CIF No}
        Click Element    ${ปุ่มค้นหา}


ตรวจสอบข้อมูลระดับฝ่ายกำกับพนักงาน
        Run Keyword And Ignore Error    Take Owner
        Run Keyword And Ignore Error    Investigate


ตรวจสอบรายการว่า(ใช่)และระบุเหตุผล
        Wait Until Element Is Visible   ${ปุ่มใช่_xpath}
        Click Element  ${ปุ่มใช่_xpath}
        Input Text    ${หมายเหตุ_xpath}    ${หมายเหตุ}

ตรวจสอบรายการว่า(ไม่)และระบุเหตุผล
        Wait Until Element Is Visible   ${ปุ่มไม่_xpath}
        Click Element  ${ปุ่มไม่_xpath}
        Input Text    ${หมายเหตุ_xpath}    ${หมายเหตุ}

กดปุ่มยืนยันการตรวจสอบ
        Click Element    ${ปุ่มยืนยันการตรวจสอบ_xpath}
        Click Element    ${ปุ่มยืนยัน_xpath}
        Run Keyword And Ignore Error    กดปุ่มตกลง
        

กดปุ่มApproveและเข้าหน้าข้อมูล
       Wait Until Element Is Visible    ${ปุ่มApprove_xpath}
      Click Element    ${ปุ่มApprove_xpath}
#      Run Keyword And Ignore Error    กดปุ่มตกลง
ฝ่ายกำกับหัวหน้างานอนุมัติข้อมุูล
      Click Element    ${ปุ่มอนุมัติ_xpath}
      Click Element    ${ปุ่มยืนยัน_xpath}
      Run Keyword And Ignore Error    กดปุ่มตกลง

ฝ่ายกำกับหัวหน้างานไม่อนุมัติข้อมุูลและระบุเหตุผล
     Input Text    ${หมายเหตุหัวหน้า_xpath}    ${หมายเหตุหัวหน้า}
     Click Element    ${ปุ่มไม่อนุมัติ_xpath}
     Click Element    ${ปุ่มยืนยัน_xpath}
     Run Keyword And Ignore Error    กดปุ่มตกลง

