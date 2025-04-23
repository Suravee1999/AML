*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${ไทย Smart Card Leader}     //button[h4[contains(text(), 'ไทย Smart Card Leader')]]

${ยินยอม}       (//mat-radio-button[.//span[text()='ยินยอม']])[1]
${ไม่ยินยอม}      ( //mat-radio-button[.//span[text()='ไม่ยินยอม']])[1]
${เพิกถอนความยินยอม}        (//mat-radio-button[.//span[text()='เพิกถอนความยินยอม']])[1]
${ยินยอม}       (//mat-radio-button[.//span[text()='ยินยอม']])[2]
${ไม่ยินยอม}      ( //mat-radio-button[.//span[text()='ไม่ยินยอม']])[2]
${เพิกถอนความยินยอม}        (//mat-radio-button[.//span[text()='เพิกถอนความยินยอม']])[2]
${ยินยอม}       (//mat-radio-button[.//span[text()='ยินยอม']])[3]
${ไม่ยินยอม}      ( //mat-radio-button[.//span[text()='ไม่ยินยอม']])[3]
${เพิกถอนความยินยอม}        (//mat-radio-button[.//span[text()='เพิกถอนความยินยอม']])[3]
${ยินยอม}       (//mat-radio-button[.//span[text()='ยินยอม']])[4]
${ไม่ยินยอม}      ( //mat-radio-button[.//span[text()='ไม่ยินยอม']])[4]
${เพิกถอนความยินยอม}        (//mat-radio-button[.//span[text()='เพิกถอนความยินยอม']])[4]
${ประเภท_เลือก}      //mat-option//span[contains(text(), 'บุคคลธรรมดา')]
${ประเภท_นิติบุคคล}     //mat-option//span[normalize-space(text())='นิติบุคคล']
${ประเภทลูกค้า_เลิอก}       //mat-option//span[normalize-space(text())='ลูกค้าธนาคาร']
${ประเภทลูกค้า_ลูกค้าจร}    //mat-option//span[normalize-space(text())='ลูกค้าจร']
${วัตถุประสงค์การดำเนินการ}    xpath=//label[contains(text(), 'วัตถุประสงค์การดำเนินการ')]/following::mat-select[1]
${วัตถุประสงค์การดำเนินการ_เปิดบัญชีใหม่}   //mat-option//span[normalize-space(.)='เปิดบัญชีใหม่']
${วัตถุประสงค์การดำเนินการ_เปลี่ยนแปลงข้อมูล}   //mat-option//span[normalize-space(.)='เปลี่ยนแปลงข้อมูล']
${ความเสี่ยงและ Watchlist}      //mat-radio-button[.//span[text()='ความเสี่ยงและ Watchlist']]
${เฉพาะ Watchlist}      //mat-radio-button[.//span[text()='เฉพาะ Watchlist']]
${วันที่ครบกำหนดทบทวนความเสี่ยง}    //input[@name='risk_check_due_date_picker']

#******************************************
#******************************************
${ปุ่มเพื่มเติม}    //button[.//mat-icon[normalize-space(text())='open_in_new']]
${CIF_เพื่มเติม}    //input[@ng-reflect-name='cif']
${ชื่อลูกค้า_เพื่มเติม}    //input[@ng-reflect-name='firstNameTh']
${นามสกุลลูกค้า_เพื่มเติม}      //input[@ng-reflect-name='lastNameTh']
${เลขบัตรประจำตัวประชาชน/หนังสือเดินทาง_เพื่มเติม}      //input[@ng-reflect-name='identificationNo']
${เลขที่บัญชี_เพื่มเติม}    //input[@ng-reflect-name='accountingNuber']
${วัตถุประสงค์การดำเนินการ_เพื่มเติม}   //mat-select[@ng-reflect-name='objective']
${วัตถุประสงค์การดำเนินการ_เลือก}
${ประเภทลูกค้า_เพื่มเติม}   //mat-select[@ng-reflect-name='customerTypeName']
${ประเภทลูกค้า_เลือก}       //mat-option[.//span[normalize-space(text())='${ประเภทลูกค้า}']]
${อาชีพ_เพื่มเติม}   //mat-select[@ng-reflect-name='occupation']
${อาชีพ_เลือก}      //mat-option[.//span[normalize-space(text())='${อาชีพ}']]
${สัญชาติ_เพื่มเติม}   //mat-select[@name='selected_nationality']
${สัญชาติ_เลือก}        //mat-option[.//span[normalize-space(text())='${สัญชาติ}']]
${ประเทศที่อยู่_เพื่มเติม}   //mat-select[@name='selected_country']
${ประเทศที่อยู่_เลือก}      //mat-option[.//span[normalize-space(text())='${ประเทศที่อยู่}']]
${เป็นลูกค้าที่ไม่มีถิ่นที่อยู่ในประเทศไทย_เพื่มเติม}   //mat-select[@name='notInThai']
${เป็นลูกค้าที่ไม่มีถิ่นที่อยู่ในประเทศไทย_เลือก}       //mat-option[.//span[normalize-space(text())='${เป็นลูกค้าที่ไม่มีถิ่นที่อยู่ในประเทศไทย}']]
${ตรวจสอบพบรายชื่อใน watchlist_เพื่มเติม}   //input[@ng-reflect-name='watchlist_status']

${ปุ่มตรวจสอบwatchlist_เพื่มเติม}     xpath=//button[.//span[text()='ตรวจสอบสถานะ Watchlist']]
${สาขาเจ้าของบัญชี_เพื่มเติม}     //input[@ng-reflect-name='accountingOwnerBranch']
${ประเภทผลิตภัณฑ์_เพื่มเติม}      //mat-select[@name='productType']
${ปัจจัยเกี่ยวกับช่องทางและบริการ_เพื่มเติม}      //mat-select[@name='factorServices']

${กดพื้นที่ว่าง}    //body    10    10   #ใช้คำสั่ง Click Element At Coordinates
#******************************************
#******************************************

${อนุมัติ KYC (Approve)}       (//mat-radio-button[.//span[text()='อนุมัติ KYC (Approve)']])[1]
${ปฏิเสธ KYC (Reject)}       (//mat-radio-button[.//span[text()='ปฏิเสธ KYC (Reject)']])[1]
${ยืนยันสถานะ KYC_ระบุเหตุผล}       //textarea(@ng-reflect-name='branchStaffReason')
${ผู้จัดการสาขาปฏิบัติงาน ณ สาขา}       //mat-radio-button[.//span[text()='ผู้จัดการสาขาปฏิบัติงาน ณ สาขา']]
${ผู้จัดการสาขาปฏิบัติงานนอกสาขา}       //mat-radio-button[.//span[text()='ผู้จัดการสาขาปฏิบัติงานนอกสาขา']]
${อนุมัติ KYC (Approve)}       (//mat-radio-button[.//span[text()='อนุมัติ KYC (Approve)']])[2]
${ปฏิเสธ KYC (Reject)}       (//mat-radio-button[.//span[text()='ปฏิเสธ KYC (Reject)']])[2]
${การอนุมัติโดยผู้จัดการสาขา_ระบุเหตุผล}        //textarea(@ng-reflect-name='branchManagerReason')

${ปุ่มบันทึกและส่งเมล}      //button[.//mat-icon[normalize-space(text())='save'] and contains(., 'บันทึกและส่งเมล์')]

