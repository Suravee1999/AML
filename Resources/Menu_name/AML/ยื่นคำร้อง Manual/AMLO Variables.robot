*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${AML-ไทย}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'AML')]]
${ยื่นคำร้องManual}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ยื่นคำร้อง Manual')]
${อัพโหลด_xpath}    xpath=//input[@type='file']

${View Alert รายงาน ปปง. 1-01, 1-02, 1-03, 1-05-9}      xpath=//a[contains(@class, 'mat-list-item') and contains(., '    View Alert รายงาน ปปง. 1-01, 1-02,1-03, 1-05-9 ')]
${CIF_XPATH}    (//div[@fxflex='16' and contains(@class, 'contentDiv')]/mat-label)[3]
${MIN}    1000000000000
${MAX}    9999999999999

*** Keywords ***
เมนู AML ยื่นคำร้องManual
        Click Element    ${AML-ไทย}
        Click Element    ${ยื่นคำร้องManual}

เลือกเมนูView Alert รายงาน ปปง. 1-01, 1-02, 1-03, 1-05-9

        Click Element    ${View Alert รายงาน ปปง. 1-01, 1-02, 1-03, 1-05-9}

เก็บรหัสCIF
    Wait Until Element Is Visible    ${CIF_XPATH}    timeout=2s
    ${CIF}    Get Text    ${CIF_XPATH}
    Log To Console   รหัสCIF ที่เก็บได้: ${CIF}
    Set Suite Variable    ${CIF}    ${CIF}
    [Return]    ${CIF}
สุ่มเลขบัตร13หลัก
     ${random_number}=    Evaluate    random.randint(${MIN}, ${MAX})    modules=random
    Set Suite Variable     ${random_number}     ${random_number}
    [Return]     ${random_number}

ใช้งานเลขบัตร
        ${เลขที่บัตร}=   สุ่มเลขบัตร13หลัก
        Set Suite Variable  ${เลขที่บัตร}   ${เลขที่บัตร}
        [Return]   ${เลขที่บัตร}

เรียกเลขบัตร
        สุ่มเลขบัตร13หลัก
        ใช้งานเลขบัตร

