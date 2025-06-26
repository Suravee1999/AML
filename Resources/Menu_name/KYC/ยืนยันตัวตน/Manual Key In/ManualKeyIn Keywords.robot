*** Settings ***
Library     SeleniumLibrary
Resource    Manual Key In Variables.robot
Resource    ../KYC Variables.robot

*** Variables ***

${UPLOAD_FILE_PATH}         D:\\AML_Project\\File\\รูปบัตรประชาชน.png

*** Keywords ***
อัพโหลดไฟล์
        Sleep    1s
        Choose File    ${อัพโหลด_xpath}     ${UPLOAD_FILE_PATH}


เข้าหน้าจอKYC เลือกระบบ Manual Key in
        Wait Until Element Is Visible   ${KYC-ไทย}
        Click Element    ${KYC-ไทย}
        Wait Until Element Is Visible   ${ยืนยันตัวตน}
        Click Element    ${ยืนยันตัวตน}
        Wait Until Element Is Visible   ${ไทย Manual Key In}
        Click Element    ${ไทย Manual Key In}

ระบุเลขที่บัตรประจำตัวประชาชนและlaserCode
        เรียกเลขประจำตัวประชาชน
        Wait Until Element Is Visible    ${เลขประจำตัวประชาชน_xpath}
        Input Text    ${เลขประจำตัวประชาชน_xpath}    ${เลขประจำตัวประชาชน}
        สุ่มเลเซอร์โค้ด
        Wait Until Element Is Visible    ${laserCode_xpath}
        Input Text    ${laserCode_xpath}     ${random_laser_code}
        Log To Console    เลขที่บัตร :${เลขประจำตัวประชาชน}
        Log To Console    laser_code :${random_laser_code}
        Log    เลขที่บัตร :${เลขประจำตัวประชาชน}
        Log    laser_code :${random_laser_code}
        
 #############################################################################3

ระบุข้อมูล Manual Key in TH

        Click Element    ${คำนำหน้าชื่อTH_xpath}
        Click Element    ${คำนำหน้าชื่อTH_เลือก}
        Input Text    ${ชื่อTH_xpath}    ${ชื่อTH}
        Input Text    ${นามสกุลTH_xpath}    ${นามสกุลTH}

ระบุข้อมูล Manual Key in EN
        Click Element    ${คำนำหน้าชื่อEN_xpath}
        Click Element    ${คำนำหน้าชื่อEN_เลือก}
        Input Text    ${ชื่อEN_xpath}    ${ชื่อEN}
        Input Text    ${นามสกุลEN_xpath}    ${นามสกุลEN}

ระบุข้อมูลวันเกิด
        Input Text    ${วัน/เดือน/ปี เกิด_xpath}    ${วัน/เดือน/ปี เกิด}
        Input Text    ${วันที่ออกบัตร_xpath}     ${วันที่ออกบัตร}
        Input Text    ${วันที่บัตรหมดอายุ_xpath}    ${วันที่บัตรหมดอายุ}
ระบุข้อมูลที่อยู่
        Input Text    ${เลขที่_xpath}    ${เลขที่}
        Input Text    ${หมู่ที่_xpath}    ${หมู่ที่}
        Input Text    ${ตรอก_xpath}    ${ตรอก}
        Input Text    ${ซอย_xpath}    ${ซอย}
        Input Text    ${ถนน_xpath}    ${ถนน}
        Click Element    ${จังหวัด_xpath}
        Click Element    ${จังหวัด_เลือก}
        Click Element    ${อำเภอ_xpath}
        Click Element    ${อำเภอ_เลือก}
        Click Element    ${ตำบล_xpath}
        Click Element    ${ตำบล_เลือก}
        Input Text    ${รหัสไปรษณีย์_xpath}    ${รหัสไปรษณีย์}



กดปุ่มบันทึก
        Click Element    ${ปุ่มบันทึก}

ข้อมูล Consent ยินยอม
        Wait Until Element Is Visible  ${ยินยอม1}  20s
        Click Element    ${ยินยอม1}
        Click Element    ${ยินยอม2}
        Click Element    ${ยินยอม3}
        Click Element    ${ยินยอม4}

ข้อมูล Consent ไม่ยินยอม
        Wait Until Element Is Visible  ${ไม่ยินยอม1}  20s
        Click Element    ${ไม่ยินยอม1}
        Click Element    ${ไม่ยินยอม2}
        Click Element    ${ไม่ยินยอม3}
        Click Element    ${ไม่ยินยอม4}

ข้อมูล Consent เพิกถอนความยินยอม
        Wait Until Element Is Visible  ${เพิกถอนความยินยอม1}  20s
        Click Element    ${เพิกถอนความยินยอม1}
        Click Element    ${เพิกถอนความยินยอม2}
        Click Element    ${เพิกถอนความยินยอม3}
        Click Element    ${เพิกถอนความยินยอม4}

ข้อมูลประเภท บุคคลธรรมดา&ลูกค้าธนาคาร
        Click Element       ${ประเภท_เลือก}
        Click Element       ${ประเภท_บุคคลธรรมดา}
        Click Element       ${ประเภทลูกค้า_เลิอก}
        Click Element       ${ประเภทลูกค้า_ลูกค้าธนาคาร}
ข้อมูลประเภท บุคคลธรรมดา&ลูกค้าจร
        Click Element       ${ประเภทลูกค้า_เลิอก}
        Click Element       ${ประเภทลูกค้า_ลูกค้าจร}
        Click Element       ${ประเภทลูกค้า_เลิอก}
        Click Element       ${ประเภทลูกค้า_ลูกค้าจร}
ข้อมูลประเภท นิติบุคคล&ลูกค้าธนาคาร
        Click Element    ${ประเภท_เลือก}
        Click Element    ${ประเภท_นิติบุคคล}
        Click Element       ${ประเภทลูกค้า_เลิอก}
        Click Element       ${ประเภทลูกค้า_ลูกค้าธนาคาร}
ข้อมูลประเภท นิติบุคคล&ลูกค้าจร
        Click Element    ${ประเภท_เลือก}
        Click Element    ${ประเภท_นิติบุคคล}
        Click Element    ${ประเภทลูกค้า_เลิอก}
        Click Element    ${ประเภทลูกค้า_ลูกค้าจร}

วัตถุประสงค์การดำเนินการเปิดบัญชีใหม่/เปลี่ยนแปลงข้อมูล
        Click Element    ${วัตถุประสงค์การดำเนินการ}
        Click Element    ${วัตถุประสงค์การดำเนินการ_เปิดบัญชีใหม่หรือเปลี่ยนแปลงข้อมูล}
วัตถุประสงค์การดำเนินการทำธุรกรรม
        Click Element    ${วัตถุประสงค์การดำเนินการ}
        Click Element    ${วัตถุประสงค์การดำเนินการ_ทำธุรกรรม}

ประเภทธุรกรรม(ระบุในVariables)
        Click Element    ${ประเภทธุรกรรม_xpath}
        Click Element    ${ประเภทธุรกรรม_เลือก}
#*******ส่วนของเพื่มเติม**************************
#********************************************
กดส่วนเพิ่มเติม
        Click Element    ${ปุ่มเพื่มเติม_xpath}

ระบุข้อมูลชื่อเลขบัตรประจำตัวประชาชนแทนผู้อื่น
        Input Text    ${ชื่อลูกค้า_เพื่มเติม_xpath}    ${ชื่อลูกค้า_เพื่มเติม}
        Input Text    ${นามสกุลลูกค้า_เพื่มเติม_xpath}    ${นามสกุลลูกค้า_เพื่มเติม}
        Input Text    ${เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง_เพื่มเติม_xpath}    ${เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง_เพื่มเติม}

ระบุข้อมูลส่วนของเพิ่มเติมตรวจหาWatchlist
        Click Element    ${อาชีพ_เพื่มเติม_xpath}
        Click Element    ${อาชีพ_เลือก_xpath}
        Click Element    ${สัญชาติ_เพื่มเติม_xpath}
        Click Element    ${สัญชาติ_เลือก_xpath}
        Click Element    ${ประเทศที่อยู่_เพื่มเติม_xpath}
        Click Element    ${ประเทศที่อยู่_เลือก_xpath}
        Click Element    ${เป็นลูกค้าที่ไม่มีถิ่นที่อยู่ในประเทศไทย_เพื่มเติม_xpath} 
        Click Element    ${เป็นลูกค้าที่ไม่มีถิ่นที่อยู่ในประเทศไทย_เลือก_xpath}
        Click Element    ${ปุ่มตรวจสอบสถานะWatchlist_xpath}
        Click Element    ${สาขาเจ้าของบัญชี_เพื่มเติม_xpath}
        Click Element    ${สาขาเจ้าของบัญชี_เพื่มเติม}
        Click Element    ${ประเภทผลิตภัณฑ์_เพื่มเติม_xpath}
        Click Element    ${ประเภทผลิตภัณฑ์_เลือก_เพื่มเติม}
        Click Element    ${ปัจจัยเกี่ยวกับช่องทางและบริการ_เพื่มเติม_xpath}
        Click Element    ${ปัจจัยเกี่ยวกับช่องทางและบริการ_เลือก_เพื่มเติม}
กดปุ่มตรวจสอบและบันทึก
        Wait Until Element Is Visible    ${ปุ่มบันทึก_xpath}
        Click Element    ${ปุ่มบันทึก_xpath}
#********************************************
#********************************************

ยืนยันสถานะ KYC อนุมัติ KYC (Approve)
        Click Element    ${อนุมัติ KYC (Approve)} 
        Input Text    ${ระบุเหตุผล_xpath}    ${KYC_ระบุเหตุผล}

ยืนยันสถานะ KYC ปฏิเสธ KYC (Reject)
        Click Element    ${ปฏิเสธ KYC (Reject)}
        Input Text    ${ระบุเหตุผล_xpath}    ${KYC_ระบุเหตุผล}

การอนุมัติโดยผู้จัดการสาขาอนุมัติ KYC (Approve)
        Click Element    ${ผู้จัดการสาขาปฏิบัติงาน ณ สาขา}
        Click Element    ${อนุมัติ KYC (Approve)ผู้จัดการ}
        Input Text    ${ระบุเหตุผล(ระดับผู้จัดการ)_xpath}    ${ู้จัดการสาขา_ระบุเหตุผล}
        
การอนุมัติโดยผู้จัดการสาขาปฏิเสธ KYC (Reject)
        Click Element    ${ผู้จัดการสาขาปฏิบัติงาน ณ สาขา}
        Click Element    ${ปฏิเสธ KYC (Reject)ผู้จัดการ}
        Input Text    ${ระบุเหตุผล(ระดับผู้จัดการ)_xpath}    ${ู้จัดการสาขา_ระบุเหตุผล}
กดปุ่มรอตรวจสอบ
        Click Element    ${ปุ่มรอตรวจสอบ_xpath}
กดปุ่มบันทึกและส่งเมล
        Click Element    ${ปุ่มบันทึกและส่งเมล_xpath}