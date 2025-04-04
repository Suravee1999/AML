*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${AML-ไทย}     xpath=//a[contains(@class, 'sidebar-link') and .//div[contains(text(), 'AML-ไทย')]]
${ยื่นคำร้องManual}   xpath=//a[contains(@class, 'mat-list-item') and contains(., 'ยื่นคำร้อง Manual')]
${CIF_XPATH}    (//div[@fxflex='16' and contains(@class, 'contentDiv')]/mat-label)[3]
${MIN}    1000000000000
${MAX}    9999999999999

*** Keywords ***

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