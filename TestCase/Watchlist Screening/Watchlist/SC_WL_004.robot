*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/Watch List/WatchList Variables.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Va.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Keywords.robot
Documentation       ทดสอบการทำงาน Watch List SC_WL_004

*** Variables ***
${Source}     AMLO          #AMLO,CFRI,Down Jones,GSB
${เลขบัตรประจำตัวประชาชน}           1291384739122
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อ}     นัด
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อกลาง}
${ตรวจสอบด้วย ชื่อภาษาไทย นามสกุล}      สามารภ
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อ}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อกลาง}
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ นามสกุล}
${ประเทศ_เลือก}       ไทย      #ไทย , เวียดนาม , แอนตาร์กติกา , แองโกลา
${วันเกิด}      11/02/2540
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการแสดงหน้าเว็ปและการเข้าสู่ระบบ
        Enteropen web IBank & Login
        เข้าด้วยUserระดับฝ่ายกำกับพนักงาน

2.เลือกMenu Watch List
        [Documentation]   เข้าหน้า Watchlist
        เข้าMenu Watch List
        Sleep    3s
3.ระบุข้อมูลตรวจสอบชื่อ
        [Documentation]   ตรวจสอบข้อมูลWatchlist ด้วยชื่อภาษาไทยด้วยความแม่นยำ 90%
        ความแม่นยำในการค้นหา 90%
        ตรวจสอบด้วย ชื่อภาษาไทย
#        ข้อมูลเพิ่มเติมในการค้นหาประเทศ
        ข้อมูลเพิ่มเติมในการค้นหาวันเกิด
        กดปุ่มตรวจสอบ

จบการทำงาน
        จบการทำงาน