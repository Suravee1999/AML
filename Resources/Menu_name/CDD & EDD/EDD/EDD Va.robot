*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${เลขที่บัตร_xpath}  //input[@name='identificationNo']
${CIF_xpath}  //input[@name='partyNumber']
${ปุ่มค้นหา_xpath}    //button[.//span[contains(text(), 'ค้นหา')]]

${ปุ่มInvestigate_xpath}    //button[.//span[contains(text(), 'Investigate')]]

${ปุ่มTake Owner_xpath}    //button[.//span[contains(text(), 'Take Owner')]]
${ปุ่มตกลง_xpath}    //button[.//span[contains(text(), 'ตกลง')]]

${ปุ่มแก้ไขระดับความเสี่ยง_xpath}   //mat-radio-button[.//span[text()='แก้ไขระดับความเสี่ยง']]
${ระดับความเสียง_xpath}    //mat-option[@ng-reflect-value='${ระดับความเสี่ยงที่เลือก}']

${ระบุเหตุผล_xpath}     xpath=//textarea[@maxlength='2000' and @rows='3']
${ปุ่มส่งไปขออนุมัติ_xpath}     //button[.//span[contains(text(), 'ส่งไปขออนุมัติ')]]
