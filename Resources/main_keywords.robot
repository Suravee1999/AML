*** Settings ***
Library    SeleniumLibrary
Resource    SettingURL.robot
Resource    UserLogin.robot

*** Keywords ***
enteropen web IBank & Login

    Open Browser    ${URL:IBank}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2s
    Input Text    locator    ${ID:dammi}
    Input Password    locator    ${password:dammi}

