*** Settings ***
Library     SeleniumLibrary
Resource    ปปง1-05-9_va.robot
Resource    ../AMLO Variables.robot

*** Variables ***
${text:test}      test


*** Keywords ***

Select the Submit Request menu

        Click Element    ${AML-ไทย}
        Click Element    ${ยื่นคำร้องManual}
        
เลือกรายการ_ปปง1-05-9
        Click Element    ${ประเภทรายงาน}
        Click Element    ${ปปง.1-05-9}
#*******************************************************************
ยื่นคำร้องอื่นๆ & ไม่ใช่ลูกค้าธนาคาร

        Click Element    ${รายงานเนื่องจาก_อื่นๆ}
        Input Text    ${รายงานเนื่องจาก_อื่นๆ_ระบุ}    ${text:test}
        Click Element    ${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_ไม่ใช้ลูกค้าธนาคาร}
        Click Element    ${ยื่นคำร้องManual_ถัดไป}
        
ยื่นคำร้องรายงานล่าช้า & ไม่ใช่ลูกค้าธนาคาร

        Click Element    ${รายงานเนื่องจาก_รายงานตัวช้า}
        Click Element    ${ค้าหาข้อมูลจากลูกค้าด้วย_บัตรประจำตัว_ไม่ใช้ลูกค้าธนาคาร}
        Click Element    ${ยื่นคำร้องManual_ถัดไป}

#*******************************************************************
ส่วนที่1 ระบุข้อมูล(ทำธุรกรรมด้วยตนเอง)
        Input Text    ${เหตุผลการรายงาน Mannual_เหตุผลในการรายงาน}    ${เหตุผลในการรายงาน}
        Click Element    ${ประเภทธุรกรรมที่รายงาน_ธุรกรรมเงินสด}
        Click Element    ${1.1_คำนำหน้าชื่อ}
        Click Element    ${1.1_คำนำหน้าชื่อ_เลือก}
        Input Text    ${1.1_ชื่อ}    ${ชื่อ}
        Input Text    ${1.1_นามสกุล}    ${นามสกุล}
        Input Text    ${1.1_เอกสารประจำตัว_เลขที่}    ${เลขที่บัตร}
        Click Element    ${1.1สัญชาติ}
        Click Element    ${1.1สัญชาติ_เลือก}
        Click Element    ${1.1_เอกสารประจำตัว_ทำธุรกรรมด้วยตนเอง}
        Input Text    ${1.2_ที่อยู่}    ${ที่อยู่}
        Click Element    ${1.2_ประเทศ}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ไทย}
        Click Element    ${1.2_ที่อยู่_ประเทศ_จังหวัด}
        Click Element    ${1.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}
        Click Element    ${1.2_ที่อยู่_ประเทศ_อำเภอ}
        Click Element    ${1.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ตำบล}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ตำบล_เลือก}
        Input Text    ${1.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}    ${รหัสไปรษณีย์}
        Click Element    ${1.3อาชีพ}
        Click Element    ${1.3อาชีพ_เลือก}
        Input Text    ${1.3ชื่อบริษัท}    ${ชื่อบริษัท}
        Click Element    ${ไม่มีข้อมูลในข้อ 1.3}
        Click Element    ${ไม่มีข้อมูลในข้อ 1.4}
        Input Text    ${1.5_เลขที่}    ${เลขที่บัตร2}

ส่วนที่1 ระบุข้อมูล(ทำธุรกรรมแทนผู้อื่น)
          Input Text    ${เหตุผลการรายงาน Mannual_เหตุผลในการรายงาน}    ${เหตุผลในการรายงาน}
        Click Element    ${1.1_คำนำหน้าชื่อ}
        Click Element    ${1.1_คำนำหน้าชื่อ_เลือก}
        Input Text    ${1.1_ชื่อ}    ${ชื่อ}
        Input Text    ${1.1_นามสกุล}    ${นามสกุล}
        Input Text    ${1.1_เอกสารประจำตัว_เลขที่}    ${เลขที่บัตร}
        Click Element    ${1.1สัญชาติ}
        Click Element    ${1.1สัญชาติ_เลือก}
        Click Element    ${1.1_ผู้ทำธุรกรรม_ทำธุรกรรมแทนผู้อื่น}
        Input Text    ${1.2_ที่อยู่}    ${ที่อยู่}
        Click Element    ${1.2_ประเทศ}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ไทย}
        Click Element    ${1.2_ที่อยู่_ประเทศ_จังหวัด}
        Click Element    ${1.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}
        Click Element    ${1.2_ที่อยู่_ประเทศ_อำเภอ}
        Click Element    ${1.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ตำบล}
        Click Element    ${1.2_ที่อยู่_ประเทศ_ตำบล_เลือก}
        Input Text    ${1.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}    ${รหัสไปรษณีย์}
        Click Element    ${1.3อาชีพ}
        Click Element    ${1.3อาชีพ_เลือก}
        Input Text    ${1.3ชื่อบริษัท}    ${ชื่อบริษัท}
        Click Element    ${ไม่มีข้อมูลในข้อ 1.3}
        Click Element    ${ไม่มีข้อมูลในข้อ 1.4}
        Input Text    ${1.5_เลขที่}    ${เลขที่บัตร2}


ส่วนที่1 บันทึกและไปหน้าถัดไป
        Click Element    ${ส่วนที่1_บีนทึก}
        Sleep    1s
        Click Element    ${ส่วนที่1_ตกลง}
        Click Element    ${ส่วนที่1_ถัดไป}

ส่วนที่2 ปุ่มเพื่ม
       Click Element    ${ส่วนที่2_ปุ่มเพื่ม}
ส่วนที่2 ไม่ใช่ลูกค้าธนาคาร
        Click Element    ${ส่วนที่2_ไม่ใช่ลูกค้าธนาคาร}
ส่วนที่ 2 ระบุข้อมูล(บุคคลธรรมดา)
        Click Element    ${ส่วนที่2_ผู้ทำธุรกรรม_ผู้มอบหมาย}
        Click Element    ${ส่วนที่2_ประเภทผู้ทำธุรกรรม_บุคคลธรรมดา}
        Click Element    ${2.1_คำนำหน้าชื่อ}
        Click Element    ${2.1_คำนำหน้าชื่อ_เลือก}
        Input Text    ${2.1_ชื่อ}    ${ชื่อ_ส่วน2}
        Input Text    ${2.1_นามสกุล}    ${นามสกุล_ส่วน2}
        Input Text    ${2.1_เอกสารประจำตัว_เลขที่}    ${เลขที่บัตร_ส่วน2}
        Input Text    ${2.2_ที่อยู่}    ${ที่อยู่_ส่วน2}
        Click Element    ${2.2_ประเทศ}
        Click Element    ${2.2_ที่อยู่_ประเทศ_ไทย}
        Click Element    ${2.2_ที่อยู่_ประเทศ_จังหวัด}
        Click Element    ${2.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}
        Click Element    ${2.2_ที่อยู่_ประเทศ_อำเภอ}
        Click Element    ${2.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}
        Click Element    ${2.2_ที่อยู่_ประเทศ_ตำบล}
        Click Element    ${2.2_ที่อยู่_ประเทศ_ตำบล_เลือก}
        Input Text    ${2.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}    ${รหัสไปรษณีย์_ส่วน2}
        Click Element    ${2.3อาชีพ}
        Click Element    ${2.3อาชีพ_เลือก}
        Click Element    ${ไม่มีข้อมูลในข้อ 2.3}
        Click Element    ${ไม่มีข้อมูลในข้อ 2.4}
        Input Text    ${2.5_เลขที่}    ${เลขที่บัตร2_ส่วน2}

ส่วนที่ 2 ระบุข้อมูล(นิติบุคคล)
        Click Element    ${ส่วนที่2_ผู้ทำธุรกรรม_ผู้มอบหมาย}
        Click Element    ${ส่วนที่2_ประเภทผู้ทำธุรกรรม_นิติบุคคล}
        Input Text    ${2.1_ชื่อ}    ${ชื่อ_ส่วน2}
        Input Text    ${2.1_เอกสารประจำตัว_เลขที่}    ${เลขที่บัตร_ส่วน2}
        Input Text    ${2.2_ที่อยู่}    ${ที่อยู่_ส่วน2}
        Click Element    ${2.2_ประเทศ}
        Click Element    ${2.2_ที่อยู่_ประเทศ_ไทย}
        Click Element    ${2.2_ที่อยู่_ประเทศ_จังหวัด}
        Click Element    ${2.2_ที่อยู่_ประเทศ_จังหวัด_เลือก}
        Click Element    ${2.2_ที่อยู่_ประเทศ_อำเภอ}
        Click Element    ${2.2_ที่อยู่_ประเทศ_อำเภอ_เลือก}
        Click Element    ${2.2_ที่อยู่_ประเทศ_ตำบล}
        Click Element    ${2.2_ที่อยู่_ประเทศ_ตำบล_เลือก}
        Input Text    ${2.2_ที่อยู่_ประเทศ_รหัสไปรษณีย์_เลข}    ${รหัสไปรษณีย์_ส่วน2}
        Click Element    ${2.3อาชีพ}
        Click Element    ${2.3อาชีพ_เลือก}
        Click Element    ${ไม่มีข้อมูลในข้อ 2.3}
        Click Element    ${ไม่มีข้อมูลในข้อ 2.4}
        Input Text    ${2.5_เลขที่}    ${เลขที่บัตร2_ส่วน2}
ส่วนที่2 บันทึกและไปหน้าถัดไป
        Click Element    ${ส่วนที่1_บีนทึก}
        Sleep    1s


ส่วนที่2 ถัดไป
        Click Element    ${ส่วนที่2_ถัดไป}

ส่วนที่ 3 ระบุข้อมูล
            Input Text    ${3.1_ปวันที่ทำธุรกรรม}    ${วันที่ทำธุระกรรม(dd/MM/yyyy)}
            Click Element    ${3.1_ชนิดของธุรกรรม_ในประเทศ}
            Click Element    ${3.1_ลักษณะการทำธุรกรรม_โอนเงิน}
            Input Text    ${3.1_จำนวนเงิน}    ${จำนวนเงินธุรกรรม}
#*************************************************************
ส่วนที่ 3.2 ระบุข้อมูลของผู้ขอโอน(บุคคลธรรมดา)
             Click Element    ${3.2_บุคคลธรรมดา}
            Click Element    ${3.2_คำนำหน้าชื่อ}
            Click Element    ${3.2_คำนำหน้าชื่อ_เลือก}
            Input Text    ${3.2_ชื่อ}    ${ชื่อส่วนผู้ขอโอน}
            Input Text    ${3.2_นามสกุล}     ${นามสกุลส่วนผู้ขอโอน}
            Click Element    ${3.2_หมายเลขที่ใช้ในการโอน_หมายเลขบัญชีที่ขอโอน}
            Input Text    ${3.2_ระบุหมายเลข}     ${หมายเลขบัญชี/อ้างอิงส่วนผู้ขอโอน}
ส่วนที่ 3.2 ระบุข้อมูลของผู้ขอโอน(นิติบุคคล)
             Click Element    ${3.2_นิติบุคคล}
            Input Text    ${3.2_ชื่อ}         ${ชื่อส่วนผู้ขอโอน}
            Click Element    ${3.2_หมายเลขที่ใช้ในการโอน_หมายเลขบัญชีที่ขอโอน}
            Input Text    ${3.2_ระบุหมายเลข}     ${หมายเลขบัญชี/อ้างอิงส่วนผู้ขอโอน}

ส่วนที่ 3.2 หลักฐาน
            Click Element    ${3.2หลักฐานที่ใช้ในการทำธุรกรรม_CITIZENID}
            Input Text    ${3.2หลักฐานที่ใช้ในการทำธุรกรรม_ระบุ}    ${หลักฐานที่ใช้ในการทำธุรกรรม_ระบุ_ผู้โอน}

#*************************************************************
ส่วนที่ 3.3 ระบุข้อมูลของผู้รับโอน(บุคคลธรรมดา)
             Click Element    ${3.3_บุคคลธรรมดา}
            Click Element    ${3.3_คำนำหน้าชื่อ}
            Click Element    ${3.3_คำนำหน้าชื่อ_เลือก}
            Input Text    ${3.3_ชื่อ}    ${ชื่อส่วนผู้รับโอน}
            Input Text    ${3.3_นามสกุล}     ${นามสกุลส่วนส่วนผู้รับโอน}
            Click Element    ${3.3_หมายเลขที่ใช้ในการโอน_หมายเลขบัญชีที่ขอโอน}
            Input Text    ${3.3_ระบุหมายเลข}     ${หมายเลขบัญชี/อ้างอิงส่วนผู้รับโอน}
ส่วนที่ 3.3 ระบุข้อมูลของผู้รับโอน(นิติบุคคล)
             Click Element    ${3.3_นิติบุคคล}
            Input Text    ${3.3_ชื่อ}         ${ชื่อส่วนส่วนผู้รับโอน}
            Click Element    ${3.3_หมายเลขที่ใช้ในการโอน_หมายเลขบัญชีที่ขอโอน}
            Input Text    ${3.3_ระบุหมายเลข}     ${หมายเลขบัญชี/อ้างอิงส่วนผู้รับโอน}

ส่วนที่3.3 หลักฐาน
            Click Element    ${3.3หลักฐานที่ใช้ในการทำธุรกรรม_CITIZENID}
            Input Text    ${3.3หลักฐานที่ใช้ในการทำธุรกรรม_ระบุ}    ${หลักฐานที่ใช้ในการทำธุรกรรม_ระบุ_ผู้รับ}
#*************************************************************

ส่วนที่ 3 ระบุวัตถุประสงค์ของการทำธุรกรรม
            Click Element    ${3.4วัตถุประสงค์ของการทำธุรกรรม}
           Click Element    ${3.4วัตถุประสงค์ของการทำธุรกรรม_เลือก}
ส่วนที่ 3 ระบุวัตถุประสงค์ของการทำธุรกรรม(กรณีเลือกอื่นๆ)
            Input Text    ${3.4วัตถุประสงค์ของการทำธุรกรรม_อื่นๆ_โปรดระบุ}    ${ระบุเหตุผลเลือกวัตถุประสงค์ของการทำธุรกรรม}

ส่วนที่ 3 บันทึกข้อมูล
           Click Element    ${ส่วนที่1_บีนทึก}
           Sleep    1s
           Click Element    ${ส่วนที่1_ตกลง}

ส่วนที่ 3 ข้ออนุมัติ
           Click Element    ${ขออนุมัติ}
           Click Element    ${ส่วนที่3_ยืนยัน}  