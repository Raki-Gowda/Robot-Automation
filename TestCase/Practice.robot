*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_pair
    Launch_Prod_App_from_pair
    Sleep    30
    Wait Until Page Contains Element         ${Settings_Icon}        20
    Click Element                             ${Settings_Icon}

#    Scroll Element Into View    com.coveiot.android.boat:id/tvboatExclusiveHeader
    CY_Watch_Control_Feature

