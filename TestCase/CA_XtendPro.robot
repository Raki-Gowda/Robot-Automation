*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot


*** Test Cases ***
Login_and_Pair_Device
    Lounch_Prod_App
    Login_and_Verify_OTP
    CA_XtendPro_Pairing
    Sleep       10
CA_Xtend_Pro_Dashboard_Page
    CA_Pro_Landing_Page
CA_Xtend_Pro_Settings_Page
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
#Vitals verification
   Verify_Steps_Vitals
   Verify_Sleep_Vitals
   Verify_HR_Vitals
   Verify_SPO2_vitals
   Sleep        5
   Scroll     ${SPO2_text}            ${Steps_Option}
   Verify_Stress_Level_Vitals
   Verify_HRV_Vitals
   Verify_NBR_Vitals
   Verify_Energy_meter_vitals

CA_XtendPro_My_watch_Page
   CA_Xtend/Storm/StormProCall_My_Watch_Page
CA_XtendPro_Verify_Profile_Page
   CA_Pro_Profile_Page
CA_XtendPro_Home_Page
   CA_Home_Page_Verification
   CA_Scroll_Home_Page
   Logout_Function
Close_App
   Close All Applications















