*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/Watch List/WatchList Variables.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Va.robot
Resource    ../../../Resources/Menu_name/Watch List/Watch List/WatchList Keywords.robot
Documentation       ทดสอบการทำงาน Watch List SC_WL_001

*** Variables ***
${Source}     AMLO          #AMLO,CFRI,Down Jones,GSB
${เลขทะเบียนการค้า/เลขประจำตัวผู้เสียภาษี}  3710472060396
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อนิติบุคคล}    มั่งมี จำกัด
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อนิติบุคคล}
${ประเทศ_เลือก}       ไทย      #ไทย , เวียดนาม , แอนตาร์กติกา , แองโกลา
${วันที่จดทะเบียน}      10/12/2009
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการทำรายงาน Watch List
        Enteropen web IBank & Login
        เข้าด้วยUserระดับฝ่ายกำกับพนักงาน

2.เลือกMenu Watch List

        เข้าMenu Watch List
        Sleep    3s
3ระบุข้อมูล
        ค้นหาข้อมูลกรุณาเลือกประเภทในการค้นหา-นิติบุคคุล
        ตรวจสอบด้วย เลขทะเบียนการค้า/เลขประจำตัวผู้เสียภาษี
        ข้อมูลเพิ่มเติมในการค้นหาประเทศ(นิติ)
        ข้อมูลเพิ่มเติมในการค้นหาวันที่จดทะเบียน
        กดปุ่มตรวจสอบ
        กดปุ่มล้างข้อมูล
4.ระบุข้อมูลตรวจสอบชื่อ
         ตรวจสอบด้วยชื่อนิติบุคคลไทย
        ข้อมูลเพิ่มเติมในการค้นหาประเทศ(นิติ)
        ข้อมูลเพิ่มเติมในการค้นหาวันที่จดทะเบียน
        กดปุ่มตรวจสอบ
จบการทำงาน
        จบการทำงาน