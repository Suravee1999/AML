*** Settings ***
Library    SeleniumLibrary
Resource    SettingURL.robot
Resource    UserLogin.robot


*** Keywords ***
enteropen web IBank & Login

    Open Browser    ${URL:IBank}  ${Browser}  options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Set Selenium Speed    1s
    Wait Until Element Is Visible    xpath=//input[contains(@class, 'inputLogin')]    5s
    Input Text    xpath=//input[contains(@class, 'inputLogin')]    ${ID:dammi}
    Input Password    xpath=//input[contains(@class, 'inputLogin') and @type='password']    ${password:dammi}
    Click Element     //button[contains(@class, 'mat-raised-button')]
