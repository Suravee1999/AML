*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/SettingURL.robot
Resource    ../../../Resources/UserLogin.robot
Resource    ../../../Resources/main_keywords.robot
Resource    ../../../Resources/Menu_name/KYC/ยืนยันตัวตน/Manual Key In/Manual Key In Variables.robot
Resource    ../../../Resources/Menu_name/KYC/ยืนยันตัวตน/Manual Key In/ManualKeyIn Keywords.robot
Resource    ../../../Resources/Menu_name/KYC/ยืนยันตัวตน/KYC Variables.robot


*** Variables ***
#${เลขประจำตัวประชาชน}    1234567543212
${คำนำหน้าTH}   นาย
${ชื่อTH}   เทส
${นามสกุลTH}    สุดหล่อ
${คำนำหน้าEN}  Mr.   #Mr./Mrs./Miss
${ชื่อEN}  t
${นามสกุลEN}   t
${วัน/เดือน/ปี เกิด}        11/12/2540  #dd/MM/yyyy(วัน/เดือน/พศ.)
${วันที่ออกบัตร}        11/12/2560    #dd/MM/yyyy(วัน/เดือน/พศ.)
${วันที่บัตรหมดอายุ}    11/12/2570    #dd/MM/yyyy(วัน/เดือน/พศ.)
${เลขที่}   1
${หมู่ที่}      1
${ตรอก}     1
${ซอย}      1
${ถนน}      1
${จังหวัด}
${อำเภอ}
${ตำบล}
${รหัสไปรษณีย์}    12345
#***************เพื่มเติม*******************
${CIF_เพื่มเติม}
${ชื่อลูกค้า_เพื่มเติม}
${นามสกุลลูกค้า_เพื่มเติม}
${เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง_เพื่มเติม}
${เลขที่บัญชี_เพื่มเติม}
${ประเภทลูกค้า}
${อาชีพ}
${สัญชาติ}
${ประเทศที่อยู่}

${สาขาเจ้าของบัญชี}
${ประเภทผลิตภัณฑ์}    ประเภทผลิตภัณฑ์1
${ปัจจัยเกี่ยวกับช่องทางและบริการ}   ปัจจัยเกี่ยวกับช่องทางและบริการ1

${KYC_ระบุเหตุผล}
${ู้จัดการสาขา_ระบุเหตุผล}
*** Test Cases ***
1.open web IBank & Login
        [Documentation]   ทดสอบการทำงาน KYC Manual Key in
        Enteropen web IBank & Login
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
2.เข้าหน้าจอKYC เลือกระบบ Manual Key in

        เข้าหน้าจอKYC เลือกระบบ Manual Key in

3.ระบุข้อมูล
        #เรียกเลขประจำตัวประชาชน
        #ระบุข้อมูล Manual Key in TH
        #ระบุข้อมูล Manual Key in EN
        #ระบุข้อมูลวันเกิดและที่อยู่
        อัพโหลดไฟล์