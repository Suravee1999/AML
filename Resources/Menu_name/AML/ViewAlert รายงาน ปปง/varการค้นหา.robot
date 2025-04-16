*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot
*** Variables ***
${ปุ่มตกลง}     //button[.//span[contains(text(), 'ตกลง')]]
${ค้นหาCIF}     //input[@ng-reflect-name="cifNo"]
${ปุ่มค้นหา}    //button[.//span[contains(text(), 'ค้นหา')]]



${ปุ่มApprove}   //button[.//span[contains(text(), 'Approve')]]
${ปุ่มส่งกลับไปแก้ไข}   //button[.//span[contains(text(), 'ส่งกลับไปแก้ไข')]]
${ปุ่มอนุมัติ}      //button[.//span[contains(text(), 'อนุมัติ')]]
${ปุ่มยืนยัน}      //button[.//span[contains(text(), 'ยืนยัน')]]
${เหตุผลการส่งกลับ_xpath}     //textarea[@ng-reflect-maxlength='500']

