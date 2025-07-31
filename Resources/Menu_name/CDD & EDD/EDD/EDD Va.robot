*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${เลขที่บัตร_xpath}  //input[@name='identificationNo']
${ค้นหาCIF}    (//input[contains(@class, 'mat-input-element')])[2]
#//input[@name='partyNumber']

${ปุ่มค้นหา_xpath}    //button[.//span[contains(text(), 'ค้นหา')]]

${ปุ่มInvestigate_xpath}    //button[.//span[contains(text(), 'Investigate')]]

${ปุ่มTake Owner_xpath}    //button[.//span[contains(text(), 'Take Owner')]]
${ปุ่มตกลง_xpath}    //button[.//span[contains(text(), 'ตกลง')]]
${ปุ่มApprove}      //button[.//mat-icon[text()='find_in_page'] and contains(., 'Approve')]
${ปุ่มส่งกลับไปแก้ไข}   //button[.//mat-icon[text()='assignment_return'] and .//span[normalize-space()='ส่งกลับไปแก้ไข']]


${ติดต่อลูกค้าได้_xpath}         //mat-radio-button[.//span[contains(text(), 'ติดต่อลูกค้าได้')]]
${ติดต่อลูกค้าได้_เลือก_xpath}     //mat-radio-button[.//span[contains(text(), 'ลูกค้าสะดวกมาให้ข้อมูลที่สาขา')]]
${ติดต่อลูกค้าไม่ได้_xpath}        //mat-radio-button[.//span[normalize-space()='ติดต่อลูกค้าไม่ได้']]
${ติดต่อลูกค้าไม่ได้_เลือก_xpath}        //mat-radio-button[@ng-reflect-value='22']
${ไม่ต้องติดต่อลูกค้าเนื่องจากเข้าข้อยกเว้น_xpath}         //mat-radio-button[@ng-reflect-value='3']
${ไม่ต้องติดต่อลูกค้าเนื่องจากเข้าข้อยกเว้น_เลือก_xpath}        //mat-radio-button[@ng-reflect-value='32']

${ไม่พบลูกค้า_xpath}      (//input[@ng-reflect-maxlength='20'])[3]
${ปุ่มยืนยัน}      //button[.//span[normalize-space()='ยืนยัน']]
${ปุ่มถัดไป}      //button[.//mat-label[contains(text(), 'ถัดไป')] and .//mat-icon[text()='arrow_forward']]
${ปุ่มบันทึก}    //button[.//mat-icon[text()='save'] and .//mat-label[contains(text(), 'บันทึก')]]

#######################

${ข้อมูลถูกต้อง/คงเดิม_1}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[1]
${ข้อมูลถูกต้อง/คงเดิม_2}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[2]
${ข้อมูลถูกต้อง/คงเดิม_3}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[3]
${ข้อมูลถูกต้อง/คงเดิม_4}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[4]
${ข้อมูลถูกต้อง/คงเดิม_5}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[5]
${ข้อมูลถูกต้อง/คงเดิม_6}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[6]
${ข้อมูลถูกต้อง/คงเดิม_7}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[7]
${ข้อมูลถูกต้อง/คงเดิม_8}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[8]
${ข้อมูลถูกต้อง/คงเดิม_9}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[9]
${ข้อมูลถูกต้อง/คงเดิม_10}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[10]
${ข้อมูลถูกต้อง/คงเดิม_11}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[11]
${ข้อมูลถูกต้อง/คงเดิม_12}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[12]
${ข้อมูลถูกต้อง/คงเดิม_13}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[13]
${ข้อมูลถูกต้อง/คงเดิม_14}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[14]
${ข้อมูลถูกต้อง/คงเดิม_15}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[15]
${ข้อมูลถูกต้อง/คงเดิม_16}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[16]
${ข้อมูลถูกต้อง/คงเดิม_17}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[17]
${ข้อมูลถูกต้อง/คงเดิม_18}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[18]
${ข้อมูลถูกต้อง/คงเดิม_19}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลถูกต้อง')]])[19]

${ข้อมูลไม่ถูกต้อง_1}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[1]
${ข้อมูลไม่ถูกต้อง_2}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[2]
${ข้อมูลไม่ถูกต้อง_3}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[3]
${ข้อมูลไม่ถูกต้อง_4}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[4]
${ข้อมูลไม่ถูกต้อง_5}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[5]
${ข้อมูลไม่ถูกต้อง_6}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[6]
${ข้อมูลไม่ถูกต้อง_7}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[7]
${ข้อมูลไม่ถูกต้อง_8}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[8]
${ข้อมูลไม่ถูกต้อง_9}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[9]
${ข้อมูลไม่ถูกต้อง_10}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[10]
${ข้อมูลไม่ถูกต้อง_11}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[11]
${ข้อมูลไม่ถูกต้อง_12}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[12]
${ข้อมูลไม่ถูกต้อง_13}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[13]
${ข้อมูลไม่ถูกต้อง_14}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[14]
${ข้อมูลไม่ถูกต้อง_15}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[15]
${ข้อมูลไม่ถูกต้อง_16}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[16]
${ข้อมูลไม่ถูกต้อง_17}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[17]
${ข้อมูลไม่ถูกต้อง_18}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[18]
${ข้อมูลไม่ถูกต้อง_19}       (//mat-radio-button[.//span[contains(text(), 'ข้อมูลไม่ถูกต้อง')]])[19]




${แก้ข้อมูลเบอร์_xpath}       (//input[contains(@class, 'mat-input-element') and @maxlength='20'])[1]
#############################################################################

${พบความผิดปกติ_xpath}    //mat-radio-button[@ng-reflect-value='2']
${ไม่พบความผิดปกติ_xpath}    //mat-radio-button[@ng-reflect-value='1']
${ส่งไปขออนุมัติ}    //button[.//mat-label[normalize-space()='ส่งไปขออนุมัติ']]
${ส่งกลับไปแก้ไข}    //button[.//mat-label[normalize-space()='ส่งกลับไปแก้ไข']]
${ความคิดเห็น_xpath}        //textarea[contains(@class, 'mat-input-element') and @rows='15' and @maxlength='4000']
${อนุมัติการทำ EDD และยื่นคำร้อง 1-03}    //button[.//mat-label[contains(normalize-space(), 'ขอยื่นคำร้อง 1-03')]]
${อนุมัติการทำ EDD}     //button[.//mat-label[normalize-space()='อนุมัติการทำ EDD']]
${เหตุผลการส่งกลับ_xpath}     //textarea[@matinput and @rows='3']


${ปุ่มApprove_xpath}     xpath=//button[normalize-space()='Approve']


