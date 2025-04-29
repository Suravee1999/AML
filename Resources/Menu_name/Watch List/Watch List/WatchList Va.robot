*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${Source_xpath}    //mat-select[@name='watchListSources']
${Source_เลือก}     xpath=//mat-option//span[normalize-space(text())="${Source}"]
${กรุณาเลือกประเภทในการค้นหา_บุคคลธรรมดา}       //mat-radio-button[.//span[text()='บุคคลธรรมดา']]
${กรุณาเลือกประเภทในการค้นหา_นิติบุคคล}       //mat-radio-button[.//span[text()='นิติบุคคล']]
${% ความแม่นยำในการค้นหา_90}       //mat-radio-button[.//span[text()='90%']]
${% ความแม่นยำในการค้นหา_100}       //mat-radio-button[.//span[text()='100%']]
${เลขบัตรประจำตัวประชาชน_xpath}     //input[@name='idPassportNo']
${ตรวจสอบด้วย ชื่อภาษาไทย_xpath}    //mat-radio-button[.//span[text()='ตรวจสอบด้วย ชื่อภาษาไทย']]
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อ_xpath}       //input[@name='firstNameThai']
${ตรวจสอบด้วย ชื่อภาษาไทย ชื่อกลาง_xpath}     //input[@name='middleNameThai']
${ตรวจสอบด้วย ชื่อภาษาไทย นามสกุล_xpath}      //input[@name='lastNameThai']
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ_xpath}     //mat-radio-button[.//span[text()='ตรวจสอบด้วย ชื่อภาษาอังกฤษ']]
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อ_xpath}      //input[@name='firstNameEng']
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ ชื่อกลาง_xpath}      //input[@name='middleNameEng']
${ตรวจสอบด้วย ชื่อภาษาอังกฤษ นามสกุล_xpath}       //input[@name='lastNameEng']
${ประเทศ_xpath}   //mat-select[@name='nationality']
${ประเทศ_เลือก_xpath}    xpath=//mat-option[.//span[contains(text(),'${ประเทศ_เลือก}')]]
${วันเกิด_xpath}     //input[@name='currentDate']
${ปุ่มตรวจสอบ}      //button[.//span[contains(text(),'ตรวจสอบ')]]


