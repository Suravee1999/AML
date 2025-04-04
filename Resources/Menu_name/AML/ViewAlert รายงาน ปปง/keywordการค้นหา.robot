*** Settings ***
Library     SeleniumLibrary
Resource    ../ยื่นคำร้อง Manual/AMLO Variables.robot
Resource     varการค้นหา.robot

*** Keywords ***
กดปุ่มตกลง
    Sleep    3s
    Wait Until Element Is Visible    ${ปุ่มตกลง}    5s
    Click Element    ${ปุ่มตกลง}

ค้าหารายงานด้วย CIF
    Input Text    ${ค้นหาCIF}    ${CIF}
    Click Element    ${ปุ่มค้นหา}

