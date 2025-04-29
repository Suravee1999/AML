*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/Watch List/WatchList Variables.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Va.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Keywords.robot


*** Variables ***
${Source}               #
${เลขบัตรประจำตัวประชาชน}
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อ}
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อกลาง}
${ตรวจสอบด้วย ชื่อภาษาไทย นามสกุล}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อ}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อกลาง}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ นามสกุล}
${ประเทศ_เลือก}
${วันเกิด}
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการทำรายงาน Watch List
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
2.เลือกMenu Watch List

        เข้าMenu Watch List

3ระบุข้อมูล
        ค้นหาข้อมูลSource
        ค้นหาข้อมูลกรุณาเลือกประเภทในการค้นหา-บุคคลธรรมดา
        ความแม่นยำในการค้นหา 90%
        ตรวจสอบด้วย เลขประจำตัวประชาชน/เลขที่หนังสือเดินทาง
        ข้อมูลเพิ่มเติมในการค้นหาประเทศ
        ข้อมูลเพิ่มเติมในการค้นหาวันเกิด
        กดปุ่มตรวจสอบ