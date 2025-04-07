*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
#    Lounch_Prod_App
#    Login_and_Verify_OTP
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
     Verify_Welness_page_details
     Verify_Steps_Wellness
     verify_activities_wellness
     verify_vitals_wellness
     Verify_HR_Vitals_welness
     Verify_SPO2_vitals_welness
     Verify_Energy_Meter_Vitals_wellness
     verify_Restore_wellness
     Verify_Sleep_Vitals_Wellness
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
