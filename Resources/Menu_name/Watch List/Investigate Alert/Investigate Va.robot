*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CIFNO_xpath}      //input[@name='cifno']
${ชื่อ_xpath}         //input[@name='name']
${Hitdate_xapth}    //input[@name='hdate']
${ปุ่มค้นหา}    //button[.//span[contains(text(), 'ค้นหา')]]
