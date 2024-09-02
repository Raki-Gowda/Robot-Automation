*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
    Launch_Prod_App_from_pair
    CY_WavePrimiaTalk_Pairing
    Sleep    10
CY_Wave_Primia_Talk_Dashboard_Page
   CY_Landing_Page
CY_Wave_Primia_Talk_Settings_Page
    Goto_Settings_Page
    Sleep      10
CY_Wave_Primia_Talk_Features_Verification
   Verify_CY_Features
   Verify_AAD_Feature
   Verify_Auto_HR_Features
   Verify_Alarm_Feature
   Verify_Stress&HRV_Feature
   Verify_NBR_Feature
   Verify_Sedentary_Reminder_Feature
   Sleep     4
   Verify_Nudges_Feature
   Verify_BT_Calling_Feature
   Verify_Find_My_Watch_Feature
   Verify_Weather_Feature
   Verify_CY_SenseAI_Feature
   Verify_Notification_Feature
   CY_Watch_Control_Feature
CY_Wave_Primia_Talk_Fitness_Vitals_Page
   Fitness_Page_Vitals_Details
   Verify_Steps_Vitals
   Verify_Sleep_Vitals
   Verify_HR_Vitals
   Verify_SPO2_Vitals
   Sleep        5
   Scroll     ${SPO2_text}            ${Steps_Option}
   Verify_Stress_Level_Vitals
   Verify_HRV_Vitals
   Verify_NBR_Vitals
   Verify_Energy_Meter_Vitals
CY_Wave_Primia_Talk__Fitness_Plan
    Fitness_Page_Fitness
#    Fitness_Plan_Page
CY_Wave_Primia_Talk_My_Watch_Page
    CA_Xtend/Storm/StormProCall_My_Watch_Page
CY_Wave_Primia_Talk_Profile_Page
    CA_Pro_Profile_Page
CY_Wave_Primia_Talk_Home_Page
    CY_Home_Page_Verification
#    CA_Scroll_Home_Page
    Logout_Function
Close_App
    Close All Applications

