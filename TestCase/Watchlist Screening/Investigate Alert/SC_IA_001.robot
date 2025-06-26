*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/Watch List/Investigate Alert/Investigate Va.robot
Resource    ../../../Resources/Menu_name/Watch List/Investigate Alert/Investigate Key.robot
Resource    ../../../Resources/Menu_name/Watch List/WatchList Variables.robot

Documentation       ทดสอบการทำงาน

*** Variables ***
${CIF No}     10000002
${หมายเหตุ}     test
${หมายเหตุหัวหน้า}      ทดสอบ

*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการทำรายงาน Watch List
        Enteropen web IBank & Login
        เข้าด้วยUserระดับฝ่ายกำกับพนักงาน

2.เลือกMenu Investigate Alert

        เข้าMenu Investigate Alert

3.พนักงานฝ่ายกำกับตรวจสอบข้อมูล

        ค้นหาเลข CIF
        ตรวจสอบข้อมูลระดับฝ่ายกำกับพนักงาน
4.ตรวจสอบว่าเป็นจริงและส่งอนุมัติ

        ตรวจสอบรายการว่า(ใช่)และระบุเหตุผล
        กดปุ่มยืนยันการตรวจสอบ
5.ออกระบบเข้าใช้ Userฝ่ายกำกับหัวหน้างาน
        ออกจากระบบ
        เข้าด้วยUserระดับฝ่ายกำกับหัวหน้างาน
        เข้าMenu Investigate Alert กรณีระบบไม่รีเฟสค่าหน้าจอ
ุ6.อนุมัติรายการ
        ค้นหาเลข CIF
        กดปุ่มApproveและเข้าหน้าข้อมูล
#        ฝ่ายกำกับหัวหน้างานอนุมัติข้อมุูล
จบการทำงาน
        จบการทำงาน

