*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cz_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
    Lounch_Prod_App
    Login_and_Verify_OTP
    CA_StormPro_Pairing
    Sleep       10
CA_StormPro_Dashboard_Page
    CZ_Landing_Page
CA_StormPro_Settings_Page
    Goto_Settings_Page
    Sleep      10
CA_StormPro_Features_verification
   Verify_CA_StormPro_Features
   Verify_AAD_Feature
   Verify_Auto_HR_Features
   Verify_Stress&HRV_Feature
   Verify_NBR_Feature
   Verify_Sedentary_Reminder_Feature
   Verify_Nudges_Feature
   Verify_Find_My_Watch_Feature
   Verify_Weather_Feature
   Verify_Notification_Feature
CA_StormPro_Watch_Control_Feature_Verification
   Watch_Control_Feature
CA_StormPro_Fitness_Vitals_Page
   Fitness_Page_Vitals_Details
   Verify_Steps_Vitals
   Verify_Sleep_Vitals
   Verify_HR_Vitals
   Verify_SPO2_Vitals
   Sleep       4
   Scroll     ${SPO2_text}            ${Steps_Option}
   Verify_Stress_Level_Vitals
   Verify_HRV_Vitals
   Verify_NBR_Vitals
   Verify_Energy_Meter_Vitals
#CZ_StormPro_Fitness_Plan_Page
#    Fitness_Page_Fitness
#    Fitness_Plan_Page
CA_StormPro_My_Watch_Page
   CA_StormPro_Mywatch_page
CA_StormPro_Profile_Page
   CA_Pro_Profile_Page
CA_StormPro_Home_Page
   CZ_XtendSport_Verify_Home_Page
CA_Logout
   Logout_Function
Close_Application
   Close All Applications


