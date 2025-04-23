*** Settings ***
Library     SeleniumLibrary
Resource    Smart Card Variables.robot
Resource    ../KYC Variables.robot

*** Keywords ***
เข้าหน้าจอKYC เลือกระบบ Smart Card Leader
        Click Element    ${KYC-ไทย}
        Click Element    ${ยืนยันตัวตน}
        Click Element    ${ไทย Smart Card Leader}


