*** Settings ***
Library     SeleniumLibrary
Resource    ค้นหาข้อมูล_variables.robot
Resource    ../ยืนยันตัวตน/KYC Variables.robot
Resource    ../ยืนยันตัวตน/Manual Key In/ManualKeyIn Keywords.robot

*** Variables ***

${UPLOAD_FILE_PATH}         D:\\AML_Project\\File\\รูปบัตรประชาชน.png

*** Keywords ***

เข้าหน้าค้นหาข้อมูล KYC
    Wait Until Element Is Visible    ${ค้นหาข้อมูล KYC}
    Click Element    ${ค้นหาข้อมูล KYC}

ค้นหาเลขเลขประจำตัว
       Wait Until Element Is Visible    ${เลขบัตร_xpath}
       Input Text    ${เลขบัตร_xpath}    ${random_number}
       Wait Until Element Is Visible    ${ปุ่มค้นหา}
       Click Element    ${ปุ่มค้นหา}
        Capture Page Screenshot
เข้าดูข้อมูล
        Wait Until Element Is Visible    ${ปุ่มดูข้อมูล_xpath}
        Click Element    ${ปุ่มดูข้อมูล_xpath}
        Capture Page Screenshot

เข้าแก้ไขข้อมูล
        Wait Until Element Is Visible    ${ปุ่มแก้ไขข้อมูล_xpath}
        Click Element    ${ปุ่มแก้ไขข้อมูล_xpath}
        Capture Page Screenshot

