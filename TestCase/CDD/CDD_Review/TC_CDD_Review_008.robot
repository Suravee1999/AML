*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/CDD & EDD/CDD/CDD Va.robot
Resource    ../../../Resources/Menu_name/CDD & EDD/CDD/CDD_keyword.robot
#Resource    ../../Resources/Menu_name/CDD & EDD/CDD Review Alert/
Resource    ../../../Resources/Menu_name/CDD & EDD/CDD&EDD Variables.robot

Documentation       ทดสอบการทำงาน TC_CDD_Review_008
*** Variables ***
${CIF}      9912
${ระดับความเสี่ยงที่เลือก}  2
${เหตุผล}       test



*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการแสดงหน้าเว็ปและการเข้าสู่ระบบ
        Enteropen web IBank & Login
        เข้าด้วยUserระดับพนักงาน
2.เลือก CDD
        [Documentation]     เข้าเมนู CDD
         เข้าเมนู CDD
3.เข้าเมนู CDD
        [Documentation]     ปรับระดับความเสี่ยงข้อมูล CDD
        ค้นหารายงานด้วย CIF
        กดปุ่มทำรายการ
        ปรับระดับความเสียง
        ระบุเหตุผล
        ขออนุมัติ

4.เข้า User ผู้จัดการไม่อนมุัติ
        [Documentation]     เข้า User ผู้จัดการไม่อนุมัติรายการและส่งกลับ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       ส่งกลับไปแก้ไข
5.เข้า User ระดับพนักงานแก้ไขข้อมูล
        [Documentation]     เข้า User พนักงานแก้ไขข้อมูล
        ออกจากระบบ
        เข้าด้วยUserระดับพนักงาน
        เข้าเมนูCDD Review Alert
        ค้นหารายงานด้วย CIF
        กดปุ่มทำรายการ
        ระบุเหตุผล
        ขออนุมัติ
6.เข้า User ระดับผู้จัดการอนมุัติข้อมูล
        [Documentation]     เข้า User ผู้จัดการอนุมัติรายการ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       กดปุ่มอนุมัติ
7.เข้าUser ระดับหัวหน้าฝ่ายไม่อนุมัติ
        [Documentation]     เข้า User หัวหน้าฝ่ายไม่อนุมัติรายการและส่งกลับ
       ออกจากระบบ
       เข้าด้วยUserระดับฝ่ายกำกับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       ส่งกลับไปแก้ไข
8.เข้า User ผู้จัดการไม่อนมุัติ
        [Documentation]     เข้า User ผู้จัดการไม่อนุมัติรายการและส่งกลับ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       ส่งกลับไปแก้ไข
9.เข้า User ระดับพนักงานแก้ไขข้อมูล
        [Documentation]     เข้า User พนักงานแก้ไขข้อมูล
        ออกจากระบบ
        เข้าด้วยUserระดับพนักงาน
        เข้าเมนูCDD Review Alert
        ค้นหารายงานด้วย CIF
        กดปุ่มทำรายการ
        ระบุเหตุผล
        ขออนุมัติ
10.เข้า User ระดับผู้จัดการอนมุัติข้อมูล
        [Documentation]     เข้า User ผู้จัดการอนุมัติรายการ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       กดปุ่มอนุมัติ
11.เข้าUser ระดับฝ่ายกำกับหัวหน้างานอนุมัติข้อมูล
        [Documentation]     เข้า User หัวหน้าฝ่ายอนุมัติรายการ
       ออกจากระบบ
       เข้าด้วยUserระดับฝ่ายกำกับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       กดปุ่มอนุมัติ
12.เข้า User ระดับหัวหน้าฝ่ายกำกับ
        [Documentation]     เข้า User หัวหน้าฝ่ายกำกับไม่อนุมัติรายการและส่งกลับ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้าฝ่ายกำกับ
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       ส่งกลับไปแก้ไข
13.เข้าUser ระดับหัวหน้าฝ่ายไม่อนุมัติ
        [Documentation]     เข้า User หัวหน้าฝ่ายกม่อนุมัติรายการและส่งกลับ
       ออกจากระบบ
       เข้าด้วยUserระดับฝ่ายกำกับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       ส่งกลับไปแก้ไข
14.เข้า User ผู้จัดการไม่อนมุัติ
        [Documentation]     เข้า User ผู้จัดการไม่อนุมัติรายการและส่งกลับ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       ส่งกลับไปแก้ไข
15.เข้า User ระดับพนักงานแก้ไขข้อมูล
        [Documentation]     เข้า User พนักงานแก้ไขข้อมูล
        ออกจากระบบ
        เข้าด้วยUserระดับพนักงาน
        เข้าเมนูCDD Review Alert
        ค้นหารายงานด้วย CIF
        กดปุ่มทำรายการ
        ระบุเหตุผล
        ขออนุมัติ
16.เข้า User ระดับผู้จัดการอนมุัติข้อมูล
        [Documentation]     เข้า User ผู้จัดการอนุมัติรายการ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       กดปุ่มอนุมัติ
17.เข้าUser ระดับหัวหน้าฝ่ายอนุมัติข้อมูล
        [Documentation]     เข้า User หัวหน้าฝ่ายอนุมัติรายการ
       ออกจากระบบ
       เข้าด้วยUserระดับฝ่ายกำกับหัวหน้างาน
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
       กดปุ่มอนุมัติ
18.เข้าUser ระดับฝ่ายกำกับหัวหน้างานอนุมัติ
        [Documentation]     เข้า User หัวหน้าฝ่ายกำกับอนุมัติรายการ
       ออกจากระบบ
       เข้าด้วยUserระดับหัวหน้าฝ่ายกำกับ
       เข้าเมนูCDD Review Alert
       ค้นหารายงานด้วย CIF
       กดปุ่มApprove
#       กดปุ่มอนุมัติ
จบการทำงาน
        จบการทำงาน
