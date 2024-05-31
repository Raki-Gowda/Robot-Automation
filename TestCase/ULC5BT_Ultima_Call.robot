*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/ulc_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
    Launch_Prod_App_from_pair
    ULC5BT_Ultima_Call_Pairing
    Sleep       10
ULC5BT_Utima_Call_Dashboard_Page
    CA_Pro_Landing_Page
ULC5BT_Utima_Call_Settings_Page
    Goto_Settings_Page
    Sleep      4
ULC5BT_Utima_Call_Features_Verification
    ULC5BT_Ultima_Call_Features_Display
    Verify_Auto_HR_Features
    Verify_Alarm_Feature
    Verify_Sedentary_Reminder_Feature
    Verify_nudges_Feature
    Verify_BT_Calling_Feature
    Verify_Find_My_Watch_Feature
    Verify_Notification_Feature
    Verify_ULC_Wave_Beat_Call_Watch_Control_Feature
ULC5BT_Utima_Call_Fitness_Vitals_Page
    Fitness_Page_Vitals_Details
    Verify_Steps_Vitals
    Verify_Sleep_Vitals
    Verify_HR_Vitals
    Verify_SPO2_Vitals
    Sleep    5
    Scroll     ${SPO2_text}        ${Sleep_text}
    Verify_Energy_meter_vitals
#ULC5BT_Utima_Call_Fitness_Plan
#    Fitness_Page_Fitness
#    Fitness_Plan_Page
ULC5BT_Utima_Call_My_Watch_Page
    ULC_Wave_Beat_Call_My_Watch_Page
ULC5BT_Utima_Call_Profile_Page
    CA_Pro_Profile_Page
ULC5BT_Utima_Call_Home_Page
    ULC_WavePlay_Verify_Home_Page
    Close All Applications
