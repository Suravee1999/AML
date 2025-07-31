*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot
*** Variables ***
${ปุ่มตกลง}     //button[.//span[contains(text(), 'ตกลง')]]
${ค้นหาCIF}     //input[@ng-reflect-name="cifNo"]
${ปุ่มค้นหา}    //button[.//span[contains(text(), 'ค้นหา')]]

${ปุ่มตกลง_xpath}     //button[.//span[normalize-space()='ตกลง']]

${ปุ่มManual Detail_xpath}     //button[.//span[normalize-space()='Manual Detail']]
${ปุ่มInvestigate_xpath}     //button[.//span[normalize-space()='Investigate']]
${ปุ่มApprove_xpath}     //button[.//span[normalize-space()='Approve']]


${ปุ่มApprove}      //button[.//span[contains(text(), 'Approve')]]
${ปุ่มส่งกลับไปแก้ไข}   //button[.//mat-icon[text()='assignment_return'] and .//span[normalize-space()='ส่งกลับไปแก้ไข']]
${ปุ่มอนุมัติ}      //button[.//mat-icon[text()='assignment_turned_in'] and .//span[normalize-space()='อนุมัติ']]
${ปุ่มยืนยัน_xpath}      //button[.//span[normalize-space()='ยืนยัน']]

${เหตุผลการส่งกลับ_xpath}     //textarea[@ng-reflect-maxlength='500']

${ปุ่มตกลง_ส่งกลับ}     //button[.//i[contains(@class, 'fa-check')] and .//span[normalize-space()='ตกลง']]
${ส่วนที่1_ถัดไป}      //button[contains(@class, 'mat-raised-button') and .//span[contains(text(), 'ถัดไป')]]

${ส่งขออนุมัติ}     //button[.//mat-icon[text()='assignment_turned_in'] and .//span[normalize-space()='ส่งขออนุมัติ']]
${ไม่ต้องรายงาน_xpath}     xpath=//mat-radio-button[contains(., 'ไม่ต้องรายงาน')]
${เหตุผลไม่รายงาน_xpath}   //input[@maxlength='500']