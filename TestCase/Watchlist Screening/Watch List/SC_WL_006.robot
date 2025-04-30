*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/Watch List/WatchList Variables.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Va.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Keywords.robot
Documentation       ทดสอบการทำงาน Watch List SC_WL_006

*** Variables ***
${Source}     AMLO          #AMLO,CFRI,Down Jones,GSB
${เลขบัตรประจำตัวประชาชน}           1234567890123
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อ}
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อกลาง}
${ตรวจสอบด้วย ชื่อภาษาไทย นามสกุล}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อ}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อกลาง}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ นามสกุล}
${ประเทศ_เลือก}       ไทย      #ไทย , เวียดนาม , แอนตาร์กติกา , แองโกลา
${วันเกิด}      11/02/2540
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
