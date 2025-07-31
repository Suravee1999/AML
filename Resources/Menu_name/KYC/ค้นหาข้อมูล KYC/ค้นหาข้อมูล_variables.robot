*** Settings ***
Library     SeleniumLibrary
Library    String


*** Keywords ***

*** Variables ***

${เลขบัตร_xpath}     //input[@name='cardNo']
${ปุ่มค้นหา}    //button//span[contains(text(), 'ค้นหา')]
${ปุ่มดูข้อมูล_xpath}       //button[@mattooltip='ดูข้อมูล']
${ปุ่มแก้ไขข้อมูล_xpath}       //button[@mattooltip='แก้ไขรายงาน']




