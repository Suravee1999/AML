*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${ไทย Manual Key In}     //button[h4[contains(text(), 'ไทย Manual Key In')]]

${เลขประจำตัวประชาชน_xpath}  //input[@name='idCard']
${คำนำหน้าชื่อTH_xpath}   (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${คำนำหน้าชื่อTH_เลือก}       //mat-option/span[normalize-space(text())='${คำนำหน้าTH}']
${ชื่อTH_xpath}   //input[@name='thFirstName']
${นามสกุลTH_xpath}   //input[@name='thLastname']
${คำนำหน้าชื่อEN_xpath}   (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${คำนำหน้าชื่อEN_เลือก}       //mat-option/span[normalize-space(text())='${คำนำหน้าEN}']
${ชื่อEN_xpath}   //input[@name='enFirstname']
${นามสกุลEN_xpath}   //input[@name='enLastname']
${วัน/เดือน/ปี เกิด_xpath}  //input[@name='birthday']
${วันที่ออกบัตร_xpath}      //input[@name='issue']
${วันที่บัตรหมดอายุ_xpath}      //input[@name='expire']
${เลขที่_xpath}       //input[@name='addressNumber']
${หมู่ที่_xpath}        //input[@name='addressMoo']
${ตรอก_xpath}       //input[@name='addressAlley']
${ซอย_xpath}        //input[@name='addressSoi']
${ถนน_xpath}        //input[@name='addressRoad']
${จังหวัด_xpath}   (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${จังหวัด_เลือก}    xpath=//mat-option[.//span[contains(text(),'${จังหวัด}')]]
${อำเภอ_xpath}     (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${อำเภอ_เลือก}   xpath=//mat-option[.//span[contains(text(),'${อำเภอ}')]]
${ตำบล_xpath}     (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${ตำบล_เลือก}     xpath=//mat-option[.//span[contains(text(),'${ตำบล}')]]
${รหัสไปรษณีย์_xpath}  //input[@name='zipCode']
${อัพโหลด_xpath}    xpath=//input[@type='file']
${ปุ่มบันทึก}   xpath=//button[.//span[text()=' บันทึก ']]


