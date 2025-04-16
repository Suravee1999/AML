*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot

*** Variables ***
${ค้นหาCIF_หน้าจอแก้ไข}   //input[@name='cifNumber']
${ปุ่มค้นหา}    //button//span[contains(text(), 'ค้นหา')]
${ปุ่มแก้ไข}    //button//span[contains(text(), 'แก้ไข')]
${ปุ่มใช้}      //button//span[contains(text(), 'ใช้')]
${เหตุผลการแก้ไข}       //textarea[@maxlength='4000']
${ปุ่มยกเลิกการขอแก้ไขรายงาน}     //button[.//span[contains(text(),'ยกเลิกการขอแก้ไขรายงาน ปปง.')]]
${ปุ่มส่งไปขออนุมัติแก้ไขรายงาน}     //button[.//span[contains(text(),'ส่งไปขออนุมัติแก้ไขรายงาน ปปง.')]]
${เหตุผลการยกเลิก}      //textarea[@maxlength='500']
${ปุ่มตกลง}     //button[.//span[contains(text(), 'ตกลง')]]
${ปุ่มยืนยัน}   //button[.//span[contains(text(),'ยืนยัน')]]
${ปุ่มยกเลิก}   //button//span[contains(text(), 'ปุ่มยกเลิก')]
