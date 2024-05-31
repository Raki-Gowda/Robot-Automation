*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
    Launch_Prod_App_from_pair
    CY_LunarCallPro_Pairing
    Sleep    10
CY_Lunar_Call_Pro_Dashboard_Page
    CY_Landing_Page
CY_Lunar_Call_Pro_Settings_Page
    Goto_Settings_Page
    Sleep      10
CY_Lunar_Call_Pro_Features_Verification
   Verify_CY_Features
CY_Lunar_Call_Pro_Verify_AAD_Feature
   Verify_AAD_Feature
CY_Lunar_Call_Pro_Verify_HR_Feature
   Verify_Auto_HR_Features
CY_Lunar_Call_Pro_Verify_Alarm_Feature
   Verify_Alarm_Feature
CY_Lunar_Call_Pro_Verify_Stress_Feature
   Verify_Stress&HRV_Feature
CY_Lunar_Call_Pro_Verify_NBR_Feature
   Verify_NBR_Feature
CY_Lunar_Call_Pro_Verify_Reminder_Feature
   Verify_Sedentary_Reminder_Feature
   Sleep     4
CY_Lunar_Call_Pro_Verify_Nudge_Feature
   Verify_Nudges_Feature
CY_Lunar_Call_Pro_Verify_BTCall_Feature
   Verify_BT_Calling_Feature
CY_Lunar_Call_Pro_Verify_FindWatch_Feature
   Verify_Find_My_Watch_Feature
CY_Lunar_Call_Pro_Verify_Weather_Feature
   Verify_Weather_Feature
CY_Lunar_Call_Pro_Verify_SensAI_Feature
   Verify_CY_SenseAI_Feature
CY_Lunar_Call_Pro_Verify_Notification_Feature
   Verify_Notification_Feature
CY_Lunar_Call_Pro_Verify_Watch_Control_Features
   CY_Watch_Control_Feature
CY_Lunar_Call_Pro_Fitness_Vitals_Page
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
CY_Lunar_Call_Pro_Fitness_Plan
    Fitness_Page_Fitness
#    Fitness_Plan_Page
CY_Lunar_Call_Pro_My_Watch_Page
    CA_Xtend/Storm/StormProCall_My_Watch_Page
CY_Lunar_Call_Pro_Profile_Page
    CA_Pro_Profile_Page
CY_Lunar_Call_Pro_Home_Page
    CY_Home_Page_Verification
#    CA_Scroll_Home_Page
CY_Logout_function
    Logout_Function
Close_Application
    Close All Applications
