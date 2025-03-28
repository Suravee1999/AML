*** Settings ***
Library     SeleniumLibrary
Resource    ../AMLO Variables.robot
Resource    keywords_Testcase_1-05-9.robot

*** Variables ***
#************************************* ยื่นคำร้อง Manual ****************************************************
${ประเภทรายงาน}     xpath=//mat-select[@aria-labelledby='mat-select-value-1']
${ปปง.1-05-9}     xpath=//mat-option[@ng-reflect-value='1-05-9']
${กรณีลูกค้าทำธุรกรรมด้วยวิธีการอื่น}       //mat-checkbox[@ng-reflect-options='[object Object]']
${รายงานเนื่องจาก_รายงานตัวช้า}     xpath=//mat-radio-button[@ng-reflect-value='01']
${รายงานเนื่องจาก_อื่นๆ}    xpath=//mat-radio-button[@ng-reflect-value='02']
${รายงานเนื่องจาก_อื่นๆ_ระบุ}   xpath=//input[contains(@ng-reflect-maxlength, '200') and @aria-invalid='false']

${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว}    xpath=//mat-select[@aria-labelledby='mat-select-value-3']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_บัตรประจำตัวประชาชน}   xpath=//mat-option[@ng-reflect-value'1']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_บัตรประจำตัวผู้เสียภาษีอากร}   xpath=//mat-option[@ng-reflect-value'3']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_หนังสือเดินทาง}  xpath=//mat-option[@ng-reflect-value'4']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_อื่นๆ}   xpath=//mat-option[@ng-reflect-value='99']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_เลขบัตร}  xpath=//input[@ng-reflect-maxlength='15']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_CIF}  xpath=//mat-radio-button[@ng-reflect-value='CIF']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_CIF_ระบุ}  xpath=//input[contains(@class, 'mat-input-element') and contains(@class, 'mat-form-field-autofill-control') and @aria-invalid='false' and @aria-required='false']
${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_ไม่ใช้ลูกค้าธนาคาร}   xpath=//mat-radio-button[@ng-reflect-value="NOT_CUSTOMER"]
${ยื่นคำร้องManual_ถัดไป}   xpath=//button[@mat-raised-button]

#เหตุผลการรายงาน Mannual
${เหตุผลการรายงาน Mannual_เหตุผลในการรายงาน}  xpath=//textarea[@ng-reflect-maxlength='2000']
${ประเภทธุรกรรมที่รายงาน_ธุรกรรมเงินสด}         //mat-radio-button[.//span[contains(text(), 'ธุรกรรมเงินสด')]]
${ประเภทธุรกรรมที่รายงาน_ธุรกรรมเกี่ยวกับทรัพย์สิน}     //mat-radio-button[.//span[contains(text(), 'ธุรกรรมเกี่ยวกับทรัพย์สิน')]]

#***************************ส่วนที่1****************************************

${1.1_คำนำหน้าชื่อ}   xpath=//mat-select[@name='prefix']
${1.1_คำนำหน้าชื่อ_เลือก}  xpath=//mat-option[@ng-reflect-value='${คำนำหน้า}']
${1.1_ชื่อ}  xpath=(//input[contains(@class, 'mat-input-element') and @maxlength='250' and @required])[1]
${1.1_ชื่อกลาง}  xpath=//input[@ng-reflect-maxlength='100']
${1.1_นามสกุล}   xpath=(//input[contains(@class, 'mat-input-element') and @maxlength='250' and @required])[2]
${1.1_เอกสารประจำตัว_บัตรประจำตัว}  xpath=//mat-radio-button[@ng-reflect-value='1']
${1.1_เอกสารประจำตัว_เลขที่}   xpath=//input[@ng-reflect-maxlength='13']
${1.1_เอกสารประจำตัว_หนังสือเดินทาง}   xpath=//mat-radio-button[@ng-reflect-value='4']
${1.1_เอกสารประจำตัว_อื่นๆ}   xpath=//mat-radio-button[@ng-reflect-value='99']
${1.1สัญชาติ}       (//mat-select[.//span[contains(text(), 'โปรดระบุ')]])[1]
${1.1สัญชาติ_เลือก}     //mat-option[.//span[contains(text(),'${nationality}')]]
${1.1_เอกสารประจำตัว_อื่นๆ_โปรดระบุ}   xpath=//input[@ng-reflect-maxlength='100']
${1.1_เอกสารประจำตัว_ทำธุรกรรมด้วยตนเอง}   xpath=//mat-radio-button[contains(@class, 'mat-radio-button mat-accent') and @ng-reflect-value='0']
${1.1_ผู้ทำธุรกรรม_ทำธุรกรรมแทนผู้อื่น}    xpath=//mat-radio-button[contains(@class, 'mat-radio-button mat-accent ') and @ng-reflect-value='1']

${1.2_ที่อยู่}   xpath=//input[contains(@class, 'mat-input-element') and @maxlength='300']
${1.2_ประเทศ}     (//mat-select[@name='countryCode'])[1]
${1.2_ที่อยู่_ประเทศ_ไทย}  xpath=//mat-option[span[contains(text(), 'ไทย')]]
${1.2_ที่อยู่_ประเทศ_จังหวัด}   (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${1.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}    xpath=//mat-option[.//span[contains(text(),'${companyProvince}')]]
${1.2_ที่อยู่_ประเทศ_อำเภอ}     (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${1.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}   xpath=//mat-option[.//span[contains(text(),'${companyDistrict}')]]
${1.2_ที่อยู่_ประเทศ_ตำบล}     (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${1.2_ที่อยู่_ประเทศ_ตำบล_เลือก}     xpath=//mat-option[.//span[contains(text(),'${companySubdistrict}')]]
${1.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}  (//input[@ng-reflect-maxlength='5'])[1]
${1.2_ที่อยู่_ประเทศ_โทรศัพท์}
${1.2_ที่อยู่_ประเทศ_โทรสาร}

${1.3_สถานที่ทำงาน_Copyบ้าน}   (//button[contains(@class, 'mat-raised-button')])[1]
${1.3อาชีพ}     xpath=//mat-select[@name='occupationType']
${1.3อาชีพ_เลือก}    xpath=//mat-option[.//span[contains(text(), '${เลือกอาชีพ}')]]
${1.3อาชีพ_อื่นๆ}     xpath=//mat-option[.//span[contains(text(), '  อื่นๆ  ']
${1.3อาชีพ_อื่นๆ_ระบุ}    xpath=//input[contains(@class, 'mat-input-element') and @aria-invalid='false' and @ng-reflect-disabled='false']
${1.3ชื่อบริษัท}            //input[contains(@class, 'mat-input-element') and @ng-reflect-options='[object Object]']
${1.3_ที่อยู่}
${1.3_ประเทศ}
${1.3_ที่อยู่_ประเทศ_ไทย}
${1.3_ที่อยู่_ประเทศ_เกาหลีใต้}
${1.3_ที่อยู่_ประเทศ_กำพูชา}
${1.3_ที่อยู่_ประเทศ_จังหวัด}
${1.3_ที่อยู่_ประเทศ_อำเภอ}
${1.3_ที่อยู่_ประเทศ_ตำบล}
${1.3_ที่อยู่_ประเทศ_รหัสไปรษณีย์}
${1.3_ที่อยู่_ประเทศ_โทรศัพท์}
${1.3_ที่อยู่_ประเทศ_โทรสาร}
${ไม่มีข้อมูลในข้อ 1.3}        //mat-radio-button[.//span[contains(text(), 'ไม่มีข้อมูลในข้อ 1.3')]]

${1.4_สถานที่สะดวกในการติดต่อ_Copyบ้าน}      (//button[.//span[contains(text(), 'Copy ที่อยู่ตามทะเบียนบ้าน')]])[2]
${1.4_สถานที่สะดวกในการติดต่อ_Copyที่ทำงาน}
${1.4_ที่อยู่}
${1.4_ประเทศ}
${1.4_ที่อยู่_ประเทศ_ไทย}
${1.4_ที่อยู่_ประเทศ_เกาหลีใต้}
${1.4_ที่อยู่_ประเทศ_กำพูชา}
${1.4_ที่อยู่_ประเทศ_จังหวัด}
${1.4_ที่อยู่_ประเทศ_อำเภอ}
${1.4_ที่อยู่_ประเทศ_ตำบล}
${1.4_ที่อยู่_ประเทศ_รหัสไปรษณีย์}
${1.4_ที่อยู่_ประเทศ_โทรศัพท์}
${1.4_ที่อยู่_ประเทศ_โทรสาร}
${ไม่มีข้อมูลในข้อ 1.4}         //mat-radio-button[.//span[contains(text(), 'ไม่มีข้อมูลในข้อ 1.4')]]

${1.5_หลักฐานที่ใช้ในการทำธุรกรรม_บัตรประจำตัวประชาชน}
${1.5_หลักฐานที่ใช้ในการทำธุรกรรม_บัตรข้าราชการ/พนักงานรัฐวิสาหกิจ}   xpath=//mat-radio-button[@ng-reflect-value='2']
${1.5_หลักฐานที่ใช้ในการทำธุรกรรม_หนังสือเดินทาง}
${1.5_หลักฐานที่ใช้ในการทำธุรกรรม_ใบสำคัญประจำตัวคนต่างด้าว}
${1.5_หลักฐานที่ใช้ในการทำธุรกรรม_อื่นๆ}
${1.5_หลักฐานที่ใช้ในการทำธุรกรรม_อื่นๆ_ระบุ}
${1.5_เลขที่}   xpath=(//input[@ng-reflect-maxlength='13'])[2]
${1.5_ออกให้โดย}
${1.5_เมื่อ}
${1.5_วันหมดอายุ}

${ส่วนที่1_บีนทึก}    xpath=//button[.//span[contains(text(), 'บันทึก')]]
${ส่วนที่1_ตกลง}    //button[.//span[contains(text(), 'ตกลง')]]
${ส่วนที่1_ถัดไป}      //button[contains(@class, 'mat-raised-button') and .//span[contains(text(), 'ถัดไป')]]


#*****************ส่วนที่ 2 *************************
${ส่วนที่2_ปุ่มเพื่ม}
${ส่วนที่2_ประเภทบัตร_บัตรประจำตัวประชาชน}
${ส่วนที่2_ประเภทบัตร_บัตรประจำตัวผู้เสียภาษีอากร}
${ส่วนที่2_ประเภทบัตร_หนังสือเดินทาง}
${ส่วนที่2_ประเภทบัตร_อื่นๆ}
${ส่วนที่2_เลขที่บัตร}
${ส่วนที่2_CIF}
${ส่วนที่2_ค้นหา}
${ส่วนที่2_ไม่ใช่ลูกค้าธนาคาร}

${ส่วนที่2_ผู้ทำธุรกรรม_ผู้ร่วมทำธุรกรรม}
${ส่วนที่2_ผู้ทำธุรกรรม_ผู้มอบหมาย}
${ส่วนที่2_ผู้ทำธุรกรรม_ผู้มอบอำนาจ}
${ส่วนที่2_ประเภทผู้ทำธุรกรรม_บุคคลธรรมดา}
${ส่วนที่2_ประเภทผู้ทำธุรกรรม_นิติบุคคล}
#****2.1*******
${2.1_คำนำหน้าชื่อ}
${2.1_คำนำหน้าชื่อ_นาย}
${2.1_คำนำหน้าชื่อ_นาง}
${2.1_ชื่อ}
${2.1_ชื่อกลาง}
${2.1_นามสกุล}
${2.1_เอกสารประจำตัว_บัตรประจำตัว}
${2.1_เอกสารประจำตัว_เลขที่}
${2.1_เอกสารประจำตัว_หนังสือเดินทาง}
${2.1_เอกสารประจำตัว_อื่นๆ}
${2.1_เอกสารประจำตัว_อื่นๆ_โปรดระบุ}

${2.2_ที่อยู่}
${2.2_ประเทศ}
${2.2_ที่อยู่_ประเทศ_ไทย}
${2.2_ที่อยู่_ประเทศ_เกาหลีใต้}
${2.2_ที่อยู่_ประเทศ_กำพูชา}
${2.2_ที่อยู่_ประเทศ_จังหวัด}
${2.2_ที่อยู่_ประเทศ_อำเภอ}
${2.2_ที่อยู่_ประเทศ_ตำบล}
${2.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์}
${2.2_ที่อยู่_ประเทศ_โทรศัพท์}
${2.2_ที่อยู่_ประเทศ_โทรสาร}

${2.3_สถานที่ทำงาน_Copyบ้าน}
${2.3อาชีพ}
${2.3_ที่อยู่}
${2.3_ประเทศ}
${2.3_ที่อยู่_ประเทศ_ไทย}
${2.3_ที่อยู่_ประเทศ_เกาหลีใต้}
${2.3_ที่อยู่_ประเทศ_กำพูชา}
${2.3_ที่อยู่_ประเทศ_จังหวัด}
${2.3_ที่อยู่_ประเทศ_อำเภอ}
${2.3_ที่อยู่_ประเทศ_ตำบล}
${2.3_ที่อยู่_ประเทศ_รหัสไปรษณีย์}
${2.3_ที่อยู่_ประเทศ_โทรศัพท์}
${2.3_ที่อยู่_ประเทศ_โทรสาร}

${2.4_สถานที่สะดวกในการติดต่อ_Copyบ้าน}
${2.4_สถานที่สะดวกในการติดต่อ_Copyที่ทำงาน}
${2.4_ที่อยู่}
${2.4_ประเทศ}
${2.4_ที่อยู่_ประเทศ_ไทย}
${2.4_ที่อยู่_ประเทศ_เกาหลีใต้}
${2.4_ที่อยู่_ประเทศ_กำพูชา}
${2.4_ที่อยู่_ประเทศ_จังหวัด}
${2.4_ที่อยู่_ประเทศ_อำเภอ}
${2.4_ที่อยู่_ประเทศ_ตำบล}
${2.4_ที่อยู่_ประเทศ_รหัสไปรษณีย์}
${2.4_ที่อยู่_ประเทศ_โทรศัพท์}
${2.4_ที่อยู่_ประเทศ_โทรสาร}

${2.5_หลักฐานที่ใช้ในการทำธุรกรรม_บัตรประจำตัวประชาชน}
${2.5_หลักฐานที่ใช้ในการทำธุรกรรม_บัตรข้าราชการ/พนักงานรัฐวิสาหกิจ}
${2.5_หลักฐานที่ใช้ในการทำธุรกรรม_หนังสือเดินทาง}
${2.5_หลักฐานที่ใช้ในการทำธุรกรรม_ใบสำคัญประจำตัวคนต่างด้าว}
${2.5_หลักฐานที่ใช้ในการทำธุรกรรม_อื่นๆ}
${2.5_หลักฐานที่ใช้ในการทำธุรกรรม_อื่นๆ_ระบุ}
${2.5_เลขที่}
${2.5_ออกให้โดย}
${2.5_เมื่อ}
${2.5_วันหมดอายุ}

${ส่วนที่2_บีนทึก}
${ส่วนที่2_ถัดไป}        //button[contains(@class, 'mat-raised-button') and .//span[contains(text(), 'ถัดไป')]]


#*****************ส่วนที่ 3 *************************
${3.1_ปวันที่ทำธุรกรรม}       xpath=//input[contains(@class, 'mat-datepicker-input')]
${3.1_ชนิดของธุรกรรม_ในประเทศ}       //mat-radio-button[.//span[contains(text(), 'ในประเทศ')]]
${3.1_ชนิดของธุรกรรม_ระหว่างประเทศ}       //mat-radio-button[.//span[contains(text(), 'ระหว่างประเทศ')]]
${3.1_ลักษณะการทำธุรกรรม_โอนเงิน}       //mat-radio-button[.//span[contains(text(), 'โอนเงิน')]]
${3.1_ลักษณะการทำธุรกรรม_รับเงินโอน}        //mat-radio-button[.//span[contains(text(), 'รับเงินโอน')]]
${3.1_ลักษณะการทำธุรกรรม_เติมมูลค่าในบัตร}      //mat-radio-button[.//span[contains(text(), 'เติมมูลค่าในบัตร')]]
${3.1_ลักษณะการทำธุรกรรม_ชำระเงิน}      //mat-radio-button[.//span[contains(text(), 'ชำระเงิน')]]
${3.1_ลักษณะการทำธุรกรรม_ซื้อบัตรเงิน}      //mat-radio-button[.//span[contains(text(), 'ซื้อบัตรเงิน')]]
${3.1_จำนวนเงิน}       //input[@name='transAmount']

${3.2_จำนวนเงิน_บุคคลธรรมดา}   //mat-radio-button[.//span[contains(text(), 'บุคคลธรรมดา')]]
${3.2_จำนวนเงิน_นิติบุคคล}    //mat-radio-button[.//span[contains(text(), 'นิติบุคคล')]]
${3.2_คำนำหน้าชื่อ}         //mat-select[@name='sendPrefix']
${3.2_ชื่อ}         //input[@name='sendFirstName']
${3.2_นามสกุล}      //input[@name='sendLastName']
${3.2_หมายเลขที่ใช้ในการโอน_หมายเลขบัญชีที่ขอโอน}       (//mat-radio-button[.//span[contains(text(), 'หมายเลขบัญชีที่ขอโอน')]]([1]
${3.2_หมายเลขที่ใช้ในการโอน_หมายเลขอ้างอิงเฉพาะในการโอนเงิน}    (//mat-radio-button[.//span[contains(text(), 'หมายเลขอ้างอิงเฉพาะในการโอนเงิน')]])[1]
${3.2_ชื่อสถาบันการเงิน/ผู้ประกอบอาชีพที่ขอโอน}     //input[name='sendTransferByCode']
${3.2_ประเทศ}      //mat-select[@name='sendTransferCountryCode']
${3.2_ประเทศ_เลือก}    //mat-option[.//span[contains(text(), '${3.2ผู้ประกอบอาชีพที่ขอโอน_ประเทศ}')]]
${3.2หลักฐานที่ใช้ในการทำธุรกรรม_}      //mat-radio-group[@name='senderEvidenceType']//mat-radio-button[@value='CITIZENID']
${3.2หลักฐานที่ใช้ในการทำธุรกรรม_}      //mat-radio-group[@name='senderEvidenceType']//mat-radio-button[@value='PASSPORTNO']
${3.2หลักฐานที่ใช้ในการทำธุรกรรม_}      //mat-radio-group[@name='senderEvidenceType']//mat-radio-button[@value='TAXID']
${3.2หลักฐานที่ใช้ในการทำธุรกรรม_ระบุ}      (//input[@name='eviSenderNo'])[1]

${3.3_จำนวนเงิน_บุคคลธรรมดา}   (//mat-radio-button[.//span[contains(text(), 'บุคคลธรรมดา')]])[2]
${3.3_จำนวนเงิน_นิติบุคคล}    (//mat-radio-button[.//span[contains(text(), 'นิติบุคคล')]])[2]
${3.3_คำนำหน้าชื่อ}         //mat-select[@name='recievePrefix']
${3.3_ชื่อ}         //input[@name='recieveFirstName']
${3.3_นามสกุล}      //input[@name='recieveLastName']
${3.3_หมายเลขที่ใช้ในการโอน_หมายเลขบัญชีที่ขอโอน}       (//mat-radio-button[.//span[contains(text(), 'หมายเลขบัญชีที่ขอโอน')]]([2]
${3.3_หมายเลขที่ใช้ในการโอน_หมายเลขอ้างอิงเฉพาะในการโอนเงิน}    (//mat-radio-button[.//span[contains(text(), 'หมายเลขอ้างอิงเฉพาะในการโอนเงิน')]])[2]
${3.3_ชื่อสถาบันการเงิน/ผู้ประกอบอาชีพที่ขอโอน}     //input[name='recieveTransferByCode']
${3.3_ประเทศ}      //mat-select[@name='recieveTransferCountryCode']
${3.3_ประเทศ_เลือก}    //mat-option[.//span[contains(text(), '${3.3ผู้ประกอบอาชีพที่ขอโอน_ประเทศ}')]]
${3.3หลักฐานที่ใช้ในการทำธุรกรรม_}      //mat-radio-group[@name='recieveEvidenceType']//mat-radio-button[@value='CITIZENID']
${3.3หลักฐานที่ใช้ในการทำธุรกรรม_}     //mat-radio-group[@name='recieveEvidenceType']//mat-radio-button[@value='PASSPORTNO']
${3.3หลักฐานที่ใช้ในการทำธุรกรรม_}      //mat-radio-group[@name='recieveEvidenceType']//mat-radio-button[@value='TAXID']
${3.3หลักฐานที่ใช้ในการทำธุรกรรม_ระบุ}     (//input[@name='eviRecieveNo'])[2]



${3.4วัตถุประสงค์ของการทำธุรกรรม_เลือก}    //mat-option[.//span[contains(text(), '${เลือกวัตถุประสงค์ของการทำธุรกรรม}')]]
${3.4วัตถุประสงค์ของการทำธุรกรรม_อื่นๆ_โปรดระบุ}   xpath=//inpur[contains{@class, 'mat-input-element') and contains(@class, 'cdk-text-field-autofill-monitored')]
${เอกสารการประกอบวิเคาะห์}   //*[@id='file']
${ส่วนที่3_บันทึก}    //button[.//span[contains(text(), 'บันทึก')]]
${ขออนุมัติ}    //button//span[contains(text(), 'ขออนุมัติ')]
${ส่วนที่3_ยืนยัน}   //button//span[contains(text(), 'ยืนยัน')]



