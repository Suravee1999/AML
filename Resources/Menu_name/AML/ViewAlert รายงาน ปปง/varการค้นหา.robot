*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot
*** Variables ***
${ปุ่มตกลง}     //button[.//span[contains(text(), 'ตกลง')]]
${ค้นหาCIF}     //input[@ng-reflect-name="cifNo"]
${ปุ่มค้นหา}    //button//span[contains(text(), 'ค้นหา')]
