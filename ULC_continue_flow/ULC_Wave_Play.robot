*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cz_keywords.robot
Resource     ../Resource/ulc_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
    Launch_Prod_App_from_pair
    ULC_WavePlay_Pairing
    Sleep    10
ULC_WavePlay_Dashboard_Page
    ULC_Landing_Page
ULC_WavePlay_Settings_Page
    Goto_Settings_Page
    Sleep      10
ULC_Wave_Play_Features_Verification
    ULC_Wave_Play_Features_Display
    Verify_Auto_HR_Features
    Verify_Sedentary_Reminder_Feature
    Verify_Find_My_Watch_Feature
    Verify_Notification_Feature
    Verify_ULC_Watch_Control_Feature
ULC_Wave_Play_Fitness_Vitals_Page
    Fitness_Page_Vitals_Details
    Verify_Steps_Vitals
    Verify_Sleep_Vitals
    Verify_HR_Vitals
    Verify_SPO2_Vitals
    Sleep        5
    Scroll     ${SPO2_text}        ${Sleep_text}
    Verify_Energy_Meter_Vitals
#ULC_Wave_Play_Fitness_Plan
#    Fitness_Page_Fitness
#    Fitness_Plan_Page
ULC_Wave_Play_My_Watch_Page
    ULC_Wave_Play_Verify_My_Watch_Page
ULC_Wave_Play_Profile_Page
    CZ_Verify_Profile_Page
ULC_Wave_Play_Home_Page
    ULC_WavePlay_Verify_Home_Page
    Close All Applications

