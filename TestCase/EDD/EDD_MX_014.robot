*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/SettingURL.robot
Resource    ../../Resources/UserLogin.robot
Resource    ../../Resources/main_keywords.robot
Resource    ../../Resources/Menu_name/CDD & EDD/CDD&EDD Variables.robot
Resource    ../../Resources/Menu_name/CDD & EDD/EDD/EDD Va.robot
Resource    ../../Resources/Menu_name/CDD & EDD/EDD/EDD_keyword.robot

Documentation       ทดสอบการทำงาน EDD EDD_MX_014
*** Variables ***
${CIF}      13084616
#ใช้สำหรับข้อมูลส่วนที่ 1
#ติดต่อลูกค้าได้ :ลูกค้าสะดวกมาให้ข้อมูลที่สาขา,การดำเนินการอื่นๆโปรดระบุ
#ติดต่อลูกค้าไม่ได้ :ลูกค้าสะดวกมาให้ข้อมูลที่สาขา,การดำเนินการอื่นๆโปรดระบุ
#ไม่ต้องติดต่อลูกค้า :ข้อมูล CIF ของลูกค้า ไม่มีข้อมูลบัญชี

${ติดต่อลูกค้าได้}
${ติดต่อลูกค้าไม่ได้}
${ไม่ต้องติดต่อลูกค้า}      ข้อมูล CIF ของลูกค้า ไม่มีข้อมูลบัญชี
${การดำเนินการอื่นๆโปรดระบุ}
${ความคิดเห็น}      test
${เหตุผล}
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการแสดงหน้าเว็ปและการเข้าสู่ระบบ
        Enteropen web IBank & Login
        เข้าด้วยUserระดับพนักงาน
2.เลือก EDD
        [Documentation]     เข้าเมนู CDD
         เข้าเมนู EDD
3.เข้าเมนู EDD ระดับพนักงาน
        [Documentation]
        ค้นหารายงานด้วย CIF
        กดปุ่มทำรายการ
        ข้อมูลส่วนไม่ต้องติดต่อลูกค้า
        บันทึกข้อมูล
        กดปุ่มถัดไป
        กดปุ่มถัดไป
        ไม่พบความผิดปกติ
        บันทึกข้อมูล
        ส่งไปขออนุมัติ

จบการทำงาน
        จบการทำงาน