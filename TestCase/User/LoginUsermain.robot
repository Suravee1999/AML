*** Settings ***
Library    SeleniumLibrary
Documentation   User
Resource    ../../Resources/SettingURL.robot
Resource    ../../Resources/UserLogin.robot
Resource    ../../Resources/main_keywords.robot


*** Test Cases ***
Test Case Example
        Open Browser    ${URL:IBank}  ${Browser}  options=add_argument("--ignore-certificate-errors")
    Maximize Browser Window
    Set Selenium Speed    0.5s


    จบการทำงาน




