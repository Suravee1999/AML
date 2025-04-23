*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${KYC-ไทย}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'KYC')]]
${ยืนยันตัวตน}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ยืนยันตัวตน')]
${รายงานผลยืนยันตัวตน}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'รายงานผลยืนยันตัวตน')]
${MIN}    1000000000000
${MAX}    9999999999999
*** Keywords ***

สุ่มเลขบัตร13หลัก
     ${random_number}=    Evaluate    random.randint(${MIN}, ${MAX})    modules=random
    Set Suite Variable     ${random_number}     ${random_number}
    [Return]     ${random_number}

ใช้งานเลขบัตร
        ${เลขประจำตัวประชาชน}=   สุ่มเลขบัตร13หลัก
        Set Suite Variable  ${เลขประจำตัวประชาชน}   ${เลขประจำตัวประชาชน}
        [Return]   ${เลขประจำตัวประชาชน}

เรียกเลขประจำตัวประชาชน
        สุ่มเลขบัตร13หลัก
        ใช้งานเลขบัตร
