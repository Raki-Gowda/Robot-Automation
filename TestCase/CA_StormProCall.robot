*** Settings ***
Library      AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot


*** Test Cases ***
Login_and_Pair_Device
    Lounch_Prod_App
    Login_and_Verify_OTP
    CA_StormProCall_Pairing
    Sleep       10
CA_StormProCall_Dashboard_Page
    CA_Pro_Landing_Page
CA_Storm_Pro_Call_Settings_Page
    Goto_Settings_Page
    Sleep      4
CA_Xtend_Pro_Features_Verification
    Verify_CA_Features
    Verify_AAD_Feature
    Verify_Auto_HR_Features
    Verify_Stress&HRV_Feature
    Verify_NBR_Feature
    Verify_Sedentary_Reminder_Feature
    Sleep     4
    Verify_Nudges_Feature
    Verify_BT_Calling_Feature
    Verify_Find_My_Watch_Feature
    Verify_Weather_Feature
    Verify_Notification_Feature
    Watch_Control_Feature
Fitness_Vitals_Page
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
CA_StormProCall_My_Watch_Page
   CA_Xtend/Storm/StormProCall_My_Watch_Page
CA_StormProCall_Verify_Profile_Page
   CA_Pro_Profile_Page
CA_StormProCall_Home_Page
   CA_Home_Page_Verification
Logout_Application
   Logout_Function
Close_App
   Close All Applications













