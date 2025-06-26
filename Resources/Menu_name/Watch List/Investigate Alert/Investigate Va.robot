*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CIFNO_xpath}      //input[@name='cifno']
${ชื่อ_xpath}         //input[@name='name']
${Hitdate_xapth}    //input[@name='hdate']
${ปุ่มค้นหา}    //button[.//span[contains(text(), 'ค้นหา')]]

${ปุ่มTake Owner_xpath}     //button[.//span[normalize-space()='Take Owner']]
${ปุ่มInvestigate _xpath}     //button[.//span[normalize-space()='Investigate']]
${ปุ่มApprove_xpath}     //button[.//span[normalize-space()='Approve']]



${ปุ่มยืนยัน_xpath}     //button[.//span[normalize-space()='ยืนยัน']]

${ปุ่มใช่_xpath}    //mat-radio-button[.//span[contains(text(),'ใช่')]]
${ปุ่มไม่_xpath}    //mat-radio-button[.//span[contains(text(),'ไม่')]]
${หมายเหตุ_xpath}   //textarea[contains(@class, 'mat-input-element') and @maxlength='2000']
${หมายเหตุหัวหน้า_xpath}   //textarea[contains(@class, 'mat-input-element') and @maxlength='2000']

${ปุ่มกลับ_xpath}    //button[.//span[normalize-space()='กลับ']]
${ปุ่มยืนยันการตรวจสอบ_xpath}    //button[.//span[normalize-space()='ยืนยันการตรวจสอบ']]

###############################
${ปุ่มไม่อนุมัติ_xpath}    //button[.//span[normalize-space()='ไม่อนุมัติ']]
${ปุ่มอนุมัติ_xpath}    //button[.//span[normalize-space()='อนุมัติ']]

${ปุ่มตกลง_xpath}     //button[.//span[normalize-space()='ตกลง']]
