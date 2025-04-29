*** Settings ***
Library     SeleniumLibrary
Resource    WatchList Va.robot
Resource    ../WatchList Variables.robot

*** Keywords ***

เข้าMenu Watch List

        Click Element    ${Watch List_menuXPATH}
        Click Element    ${Watch List}

ค้นหาข้อมูลSource
        Click Element    ${Source_xpath}
        Click Element    ${Source_เลือก}

ค้นหาข้อมูลกรุณาเลือกประเภทในการค้นหา-บุคคลธรรมดา
        Click Element    ${กรุณาเลือกประเภทในการค้นหา_บุคคลธรรมดา}

ค้นหาข้อมูลกรุณาเลือกประเภทในการค้นหา-นิติบุคคุล
        Click Element    ${กรุณาเลือกประเภทในการค้นหา_นิติบุคคล}

ความแม่นยำในการค้นหา 90%
        Click Element    ${% ความแม่นยำในการค้นหา_90}

ความแม่นยำในการค้นหา 100%
        Click Element    ${% ความแม่นยำในการค้นหา_100}

ตรวจสอบด้วย เลขประจำตัวประชาชน/เลขที่หนังสือเดินทาง
        Input Text    ${เลขบัตรประจำตัวประชาชน_xpath}    ${เลขบัตรประจำตัวประชาชน}

ตรวจสอบด้วย ชื่อภาษาไทย
        Click Element    ${ตรวจสอบด้วย ชื่อภาษาไทย_xpath}
        Input Text     ${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อ_xpath}    ${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อ}
        Input Text    ${ตรวจสอบด้วย ชื่อภาษาไทย นามสกุล_xpath}    ${ตรวจสอบด้วย ชื่อภาษาไทย นามสกุล}

ตรวจสอบด้วย ชื่อภาษาอังกฤษ
        Click Element    ${ตรวจสอบด้วย ชื่อภาษาอังกฤษ_xpath}
        Input Text     ${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อ_xpath}    ${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อ}
        Input Text     ${ตรวจสอบด้วย ชื่อภาษาอังกฤษ นามสกุล_xpath}    ${ตรวจสอบด้วย ชื่อภาษาอังกฤษ นามสกุล}

ข้อมูลเพิ่มเติมในการค้นหาประเทศ
        Click Element    ${ประเทศ_xpath}
        Click Element    ${ประเทศ_เลือก_xpath}
        
ข้อมูลเพิ่มเติมในการค้นหาวันเกิด
        Input Text    ${วันเกิด_xpath}    ${วันเกิด}
        
กดปุ่มตรวจสอบ
        Click Element    ${ปุ่มตรวจสอบ}        