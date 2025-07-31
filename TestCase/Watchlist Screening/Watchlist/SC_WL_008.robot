*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/Watch List/WatchList Variables.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Va.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Keywords.robot
Documentation       ทดสอบการทำงาน Watch List SC_WL_008

*** Variables ***
${Source}     AMLO          #AMLO,CFRI,Down Jones,GSB
${เลขทะเบียนการค้า/เลขประจำตัวผู้เสียภาษี}  3710472060396
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อนิติบุคคล}    มั่งมี จำกัด
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อนิติบุคคล}
${ประเทศ_เลือก}       ไทย      #ไทย , เวียดนาม , แอนตาร์กติกา , แองโกลา
${วันที่จดทะเบียน}      10/12/2552
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการแสดงหน้าเว็ปและการเข้าสู่ระบบ
        Enteropen web IBank & Login
        เข้าด้วยUserระดับฝ่ายกำกับพนักงาน

2.เลือกMenu Watch List
        [Documentation]   เข้าหน้า Watchlist
        เข้าMenu Watch List
        Sleep    3s
3ระบุข้อมูล
        [Documentation]   ตรวจสอบข้อมูลWatchlist ด้วยชื่อภาษาไทย
        ค้นหาข้อมูลกรุณาเลือกประเภทในการค้นหา-นิติบุคคุล
        ความแม่นยำในการค้นหา 90%
        ตรวจสอบด้วยชื่อนิติบุคคลไทย
#        ข้อมูลเพิ่มเติมในการค้นหาประเทศ(นิติ)
        ข้อมูลเพิ่มเติมในการค้นหาวันที่จดทะเบียน
        กดปุ่มตรวจสอบ

จบการทำงาน
        จบการทำงาน