*** Settings ***
Library    SeleniumLibrary
Documentation   User
Resource    ../../Resources/SettingURL.robot
Resource    ../../Resources/UserLogin.robot
Resource    ../../Resources/main_keywords.robot


*** Test Cases ***
1.open web IBank & Login

        enteropen web IBank & Login

2.15m check out auto

        Sleep    1000s



