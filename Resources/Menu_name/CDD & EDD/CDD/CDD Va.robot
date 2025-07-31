*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${เลขที่บัตร_xpath}  //input[@name='identificationNo']
${ค้นหาCIF}  //input[@name='partyNumber']
${ชื่อลูกค้า_xpath}     //input[@name='partyName']
${ล้างข้อมูล_xpath}    //button[.//span[contains(text(), 'ล้างข้อมูล')]]
${ปุ่มค้นหา_xpath}    //button[.//span[contains(text(), 'ค้นหา')]]

${ปุ่มInvestigate_xpath}    //button[.//span[contains(text(), 'Investigate')]]
${ปุ่มดูข้อมูล_xpath}     //button[.//mat-icon[text()='find_in_page']]
${ปุ่มTake Owner_xpath}    //button[.//span[contains(text(), 'Take Owner')]]
${ปุ่มตกลง_xpath}    //button[.//span[contains(text(), 'ตกลง')]]

${ปุ่มแก้ไขระดับความเสี่ยง_xpath}   //mat-radio-button[.//span[text()='แก้ไขระดับความเสี่ยง']]
${เลือกระดับความเสี่ยง_xpath}     //mat-select[@name='riskLevel']
${ระดับความเสียง_xpath}    //mat-option[@ng-reflect-value='${ระดับความเสี่ยงที่เลือก}']

${ระบุเหตุผล_xpath}     xpath=//textarea[@maxlength='2000' and @rows='3']
${ปุ่มส่งไปขออนุมัติ_xpath}     //button[.//mat-label[normalize-space()='ส่งไปขออนุมัติ']]
${ปุ่มยืนยัน_xpath}       //button[.//span[normalize-space()='ยืนยัน']]
${ปุ่มApprove_xpath}     //button[.//span[contains(text(), 'Approve')]]
${ส่งกลับไปแก้ไข}    //button[.//mat-label[normalize-space()='ส่งกลับไปแก้ไข']]
${ปุ่มอนุมัติ_xpath}        //button[.//mat-label[normalize-space()='อนุมัติ'] and .//mat-icon[normalize-space()='save']]

