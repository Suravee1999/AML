*** Settings ***
Library     SeleniumLibrary
Resource    ../AMLO Variables.robot
Resource    keywords_Testcase_1-03.robot

*** Variables ***
#************************************* ยื่นคำร้อง Manual ****************************************************
${ประเภทรายงาน}     xpath=//mat-select[@aria-labelledby='mat-select-value-1']
${ปปง.1-03}     xpath=//mat-option[@ng-reflect-value='1-03']
${รายงานเนื่องจาก_รายงานตัวช้า}     xpath=//mat-radio-button[@ng-reflect-value='01']
${รายงานเนื่องจาก_อื่นๆ}    xpath=//mat-radio-button[@ng-reflect-value='02']
${รายงานเนื่องจาก_อื่นๆ_ระบุ}   xpath=//input[contains(@ng-reflect-maxlength, '200') and @aria-invalid='false']

${แหล่งที่มาของเหตุอันควรสงสัย_พบพฤติกรรม/รายการทำธุรกรรมของลูกค้าที่มีเหตุอันควรสงสัย}     (//mat-radio-button[@ng-reflect-value='01'])[2]
${แหล่งที่มาของเหตุอันควรสงสัย_ ได้รับหนังสือจากหน่วยงานทางการ เช่น ตช. หมายเรียกพยานเอกสาร }     //mat-radio-button[.//span[contains(text(), 'ได้รับหนังสือจากหน่วยงานทางการ เช่น ตช. หมายเรียกพยานเอกสาร')]]
${แหล่งที่มาของเหตุอันควรสงสัย}     (//mat-radio-button[@ng-reflect-value='03'])[1]


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
${1.1_เอกสารประจำตัว_อื่นๆ_โปรดระบุ}   xpath=//input[contains(@class, 'ng-tns-c165-55') and @ng-reflect-maxlength='100']
${1.1_เอกสารประจำตัว_ทำธุรกรรมด้วยตนเอง}   xpath=//mat-radio-button[contains(@class, 'mat-radio-button mat-accent') and @ng-reflect-value='0']
${1.1_ผู้ทำธุรกรรม_ทำธุรกรรมแทนผู้อื่น}    xpath=(//mat-radio-button[@ng-reflect-value='1'])[2]

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
${ส่วนที่2_ปุ่มเพื่ม}       //button//span[contains(text(), 'เพิ่ม')]
${ส่วนที่2_ประเภทบัตร_บัตรประจำตัวประชาชน}
${ส่วนที่2_ประเภทบัตร_บัตรประจำตัวผู้เสียภาษีอากร}
${ส่วนที่2_ประเภทบัตร_หนังสือเดินทาง}
${ส่วนที่2_ประเภทบัตร_อื่นๆ}
${ส่วนที่2_เลขที่บัตร}
${ส่วนที่2_CIF}
${ส่วนที่2_ค้นหา}
${ส่วนที่2_ไม่ใช่ลูกค้าธนาคาร}      //button//span[contains(text(), 'ไม่ใช่ลูกค้าธนาคาร')]

${ส่วนที่2_ผู้ทำธุรกรรม_ผู้ร่วมทำธุรกรรม}   //mat-radio-button[.//span[contains(text(), 'ผู้ร่วมทำธุรกรรม')]]
${ส่วนที่2_ผู้ทำธุรกรรม_ผู้มอบหมาย}     //mat-radio-button[.//span[contains(text(), 'ผู้มอบหมาย')]]
${ส่วนที่2_ผู้ทำธุรกรรม_ผู้มอบอำนาจ}    //mat-radio-button[.//span[contains(text(), 'ผู้มอบอำนาจ')]]
${ส่วนที่2_ประเภทผู้ทำธุรกรรม_บุคคลธรรมดา}      //mat-radio-button[.//span[contains(text(), 'บุคคลธรรมดา')]]
${ส่วนที่2_ประเภทผู้ทำธุรกรรม_นิติบุคคล}        //mat-radio-button[.//span[contains(text(), 'นิติบุคคล')]]
#****2.1*******
${2.1_คำนำหน้าชื่อ}   xpath=//mat-select[@name='prefix']
${2.1_คำนำหน้าชื่อ_เลือก}  xpath=//mat-option[@ng-reflect-value='${คำนำหน้า_ส่วน2}']
${2.1_ชื่อ}  xpath=(//input[contains(@class, 'mat-input-element') and @maxlength='250' and @required])[1]
${2.1_ชื่อกลาง}  xpath=//input[@ng-reflect-maxlength='100']
${2.1_นามสกุล}   xpath=(//input[contains(@class, 'mat-input-element') and @maxlength='250' and @required])[2]
${2.1_เอกสารประจำตัว_บัตรประจำตัว}  xpath=//mat-radio-button[@ng-reflect-value='1']
${2.1_เอกสารประจำตัว_เลขที่}   xpath=//input[@ng-reflect-maxlength='13']
${2.1_เอกสารประจำตัว_หนังสือเดินทาง}   xpath=//mat-radio-button[@ng-reflect-value='4']
${2.1_เอกสารประจำตัว_อื่นๆ}   xpath=//mat-radio-button[@ng-reflect-value='99']
${2.1_เอกสารประจำตัว_อื่นๆ_โปรดระบุ}   xpath=//input[@ng-reflect-maxlength='100']

${2.2_ที่อยู่}   xpath=//input[contains(@class, 'mat-input-element') and @maxlength='300']
${2.2_ประเทศ}     (//mat-select[@name='countryCode'])[1]
${2.2_ที่อยู่_ประเทศ_ไทย}  xpath=//mat-option[span[contains(text(), 'ไทย')]]
${2.2_ที่อยู่_ประเทศ_จังหวัด}   (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${2.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}    xpath=//mat-option[.//span[contains(text(),'${companyProvince_ส่วน2}')]]
${2.2_ที่อยู่_ประเทศ_อำเภอ}     (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${2.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}   xpath=//mat-option[.//span[contains(text(),'${companyDistrict_ส่วน2}')]]
${2.2_ที่อยู่_ประเทศ_ตำบล}     (//mat-select[.//span[contains(text(),'โปรดระบุ')]])[1]
${2.2_ที่อยู่_ประเทศ_ตำบล_เลือก}     xpath=//mat-option[.//span[contains(text(),'${companySubdistrict_ส่วน2}')]]
${2.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}  (//input[@ng-reflect-maxlength='5'])[1]

${2.3_สถานที่ทำงาน_Copyบ้าน}
${2.3อาชีพ}     xpath=//mat-select[.//span[contains(text(), 'โปรดระบุ')]][1]
${2.3อาชีพ_เลือก}    xpath=//mat-option[.//span[contains(text(), '${เลือกอาชีพ_ส่วน2}')]]
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
${2.5_เลขที่}       xpath=(//input[@maxlength='13'])[2]
${2.5_ออกให้โดย}
${2.5_เมื่อ}
${2.5_วันหมดอายุ}

${ส่วนที่2_บีนทึก}    xpath=//button[.//span[contains(text(), 'บันทึก')]]
${ส่วนที่2_ตกลง}    //button[.//span[contains(text(), 'ตกลง')]]
${ส่วนที่2_ถัดไป}      //button[contains(@class, 'mat-raised-button') and .//span[contains(text(), 'ถัดไป')]]


#*****************ส่วนที่ 3 *************************

${วันที่ทำธุรกรรม_xpath}    //input[@name='transDate']
${มูลค่าของธุรกรรม_xpath}     //input[@name='transAmount']
${ประเภทธุรกรรม_xpath}     //mat-radio-button[.//span[contains(text(), '${ประเภทธุรกรรม}')]]
${รายละเอียดของธุรกรรม_xpath}         //input[@name='transTypedesc']
${เลขที่บัญชีที่ทำธุรกรรม_xpath}        //input[@name='accountNo']

${ชื่อเจ้าของบัญชี_xpath}      //mat-radio-button[.//span[contains(text(), '${ชื่อเจ้าของบัญชี}')]]
${คำนำหน้า_xpath}   //mat-select[@name='accountHolderPrefix']
${3.คำนำหน้าชื่อ_เลือก}  //mat-option[@ng-reflect-value='${3.คำนำหน้า}']
${3.ชื่อ_xpath}       //input[@name='accountHolderFirst']
${3.นามสกุล_xpath}    //input[@name='accountHolderLast']
${วัตถุประสงค์ของการทำธุรกรรม_xpath}  xpath=//mat-select[@name='objectiveType']
${วัตถุประสงค์ของการทำธุรกรรม_เลือก}    //mat-option[.//span[contains(text(), '${วัตถุประสงค์ของการทำธุรกรรม}')]]
${ไม่พบความผิดปกติ}   //mat-radio-button[@ng-reflect-value='N']
${พบความผิดปกติ}   //mat-radio-button[@ng-reflect-value='Y']
${ขออนุมัติรายงานธุรกรรมที่มีเหตุอันควรสงสัย}    //mat-radio-button[label//span[contains(text(), 'ขออนุมัติรายงานธุรกรรมที่มีเหตุอันควรสงสัย')]]
${ขออนุมัติยกเลิกการรายงานธุรกรรมที่มีเหตุอันควรสงสัย}    //mat-radio-button[label//span[contains(text(), 'ขออนุมัติยกเลิกการรายงานธุรกรรมที่มีเหตุอันควรสงสัย')]]
${3.เหตุผลประกอบการพิจารณา}  //textarea[contains(@class, 'mat-input-element')]

${เอกสารการประกอบวิเคาะห์}   //*[@id='file']
${ส่วนที่3_บันทึก}    //button[.//span[contains(text(), 'บันทึก')]]
${ขออนุมัติ}    //button//span[contains(text(), 'ขออนุมัติ')]
${ส่วนที่3_ยืนยัน}   //button//span[contains(text(), 'ยืนยัน')]



