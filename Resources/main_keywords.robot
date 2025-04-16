*** Settings ***
Library    SeleniumLibrary
Resource    SettingURL.robot
Resource    UserLogin.robot

*** Variables ***
${ปุ่มออกจากระบบ}   //button//span[contains(text(), 'ออกจากระบบ')]

*** Keywords ***
Enteropen web IBank & Login

    Open Browser    ${URL:IBank}  ${Browser}  options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]    5s
    Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:dammi}
    Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:dammi}
    Click Element     //button[contains(@class, 'mat-raised-button')]

เข้าUserหัวหน้าอนุมัติข้อมูล

        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]    5s
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:อนุมัติ}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:อนุมัติ}
        Click Element     //button[contains(@class, 'mat-raised-button')]


เข้าUserแก้ไขรายงาน

        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]    5s
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:อนุมัติ}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:อนุมัติ}
        Click Element     //button[contains(@class, 'mat-raised-button')]

ยืนยันการข้าม Pop-up
        Click Element    //button//span[contains(text(), 'รับทราบ')]
ยืนยันการเข้าระบบ
    
    Click Element    //button[contains(@class, 'mat-raised-button')]//i[contains(@class, 'fa-check')]

ออกจากระบบ
             Click Element    ${ปุ่มออกจากระบบ}
จบการทำงาน
    Sleep    5s    # หยุดทำงานเป็นเวลา 5 วินาที
    Capture Page Screenshot
    Log    Test Teardown Completed
    Close Browser  # ปิดบราวเซอร์หลังจากถ่ายภาพเสร็จ
