*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${KYC-ไทย}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'KYC')]]
${ยืนยันตัวตน}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ยืนยันตัวตน')]
${รายงานผลยืนยันตัวตน}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'รายงานผลยืนยันตัวตน')]
${ค้นหาข้อมูล KYC}      xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ค้นหาข้อมูล KYC')]
*** Keywords ***
######################## ใช้งานเลขบัตร #############################
สุ่มเลขบัตร13หลัก
    ${digits}=    Evaluate    [random.randint(0,9) for _ in range(12)]    modules=random
    ${total}=     Evaluate    sum([x*(13-i) for i,x in enumerate(${digits})])
    ${check}=     Evaluate    (11 - (${total} % 11)) % 10
    ${digits}=    Evaluate    ${digits} + [${check}]
    ${random_number}=    Evaluate    ''.join(str(x) for x in ${digits})
    Set Suite Variable  ${random_number}   ${random_number}
    [Return]    ${random_number}
ใช้งานเลขบัตร
        ${เลขประจำตัวประชาชน}=   สุ่มเลขบัตร13หลัก
        Set Suite Variable  ${เลขประจำตัวประชาชน}   ${เลขประจำตัวประชาชน}
        [Return]   ${เลขประจำตัวประชาชน}
#####################################################
เรียกเลขประจำตัวประชาชน
        สุ่มเลขบัตร13หลัก
        ใช้งานเลขบัตร
สุ่มเลเซอร์โค้ด
    ${letters}=    Evaluate    ''.join(random.choices(string.ascii_uppercase, k=2))    modules=random,string
    ${numbers}=    Evaluate    ''.join(random.choices(string.digits, k=10))    modules=random,string
    ${random_laser_code}=    Catenate    SEPARATOR=    ${letters}    ${numbers}
    Set Suite Variable    ${random_laser_code}    ${random_laser_code}
    [Return]    ${random_laser_code}






