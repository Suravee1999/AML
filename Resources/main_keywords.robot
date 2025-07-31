*** Settings ***
Library    SeleniumLibrary
Resource    SettingURL.robot
Resource    UserLogin.robot




*** Variables ***
${ปุ่มออกจากระบบ}   //button//span[contains(text(), 'ออกจากระบบ')]

*** Keywords ***
############################### เริ่มต้นการใช้งาน ####################################
Enteropen web IBank & Login

    Open Browser    ${URL:IBank}  ${Browser}  options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Set Selenium Speed    0.5s

#################################################################

################ user การใช้งาน ##########################
เข้าด้วยUserระดับพนักงาน
        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:พนักงาน}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:พนักงาน}
        Click Element     //button[contains(@class, 'mat-raised-button')]
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up

เข้าด้วยUserระดับหัวหน้างาน
        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:หัวหน้างาน}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:หัวหน้างาน}
        Click Element     //button[contains(@class, 'mat-raised-button')]
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
เข้าด้วยUserระดับฝ่ายกำกับพนักงาน
        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:ฝ่ายกำกับพนักงาน}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:ฝ่ายกำกับพนักงาน}
        Click Element     //button[contains(@class, 'mat-raised-button')]
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up

เข้าด้วยUserระดับฝ่ายกำกับหัวหน้างาน
        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:ฝ่ายกำกับหัวหน้างาน}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:ฝ่ายกำกับหัวหน้างาน}
        Click Element     //button[contains(@class, 'mat-raised-button')]
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up

เข้าด้วยUserระดับหัวหน้าฝ่ายกำกับ
        Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]
        Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:หัวหน้าฝ่ายกำกับ}
        Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:หัวหน้าฝ่ายกำกับ}
        Click Element     //button[contains(@class, 'mat-raised-button')]
        Run Keyword And Ignore Error    ยืนยันการเข้าระบบ
        Run Keyword And Ignore Error    ยืนยันการข้าม Pop-up
######################################################################

####################### การใช้งานหลัก #####################################
ยืนยันการข้าม Pop-up
        Wait Until Element Is Visible    xpath=//button[.//span[normalize-space(text())='Close']]    timeout=5s
        Click Element    xpath=//button[.//span[normalize-space(text())='Close']]

ยืนยันการเข้าระบบ
         Wait Until Element Is Visible    //button[contains(@class, 'mat-raised-button')]//i[contains(@class, 'fa-check')]
         Click Element    //button[contains(@class, 'mat-raised-button')]//i[contains(@class, 'fa-check')]

ออกจากระบบ
         Click Element    ${ปุ่มออกจากระบบ}

จบการทำงาน
    Sleep    5s    # หยุดทำงานเป็นเวลา 5 วินาที
    Capture Page Screenshot
    Log    Test Teardown Completed
    Close Browser  # ปิดบราวเซอร์หลังจากถ่ายภาพเสร็จ
#############################################################################