*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
#   Lounch_Prod_App
#   Login_and_Verify_OTP
   Launch Application
   CA_Cosmos_Pro_Pairing
   Sleep       10
CA_Cosmos_Pro_Dashboard_Page
   CA_Pro_Landing_Page
CA_Cosmos_Pro_Settings_Page
   Goto_Settings_Page
   Sleep      4
CA_Cosmos_Pro_Features_Verification
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
Vitals_Verification
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
CA_Cosmos_Pro_My_Watch_Page
   CA_Xtend/Storm/StormProCall_My_Watch_Page
CA_CosmosPro_Verify_Profile_Page
   CA_Pro_Profile_Page
CA_CosmosPro_Home_Page
   CA_Home_Page_Verification
CA_CosmosPro_Home_Page_Scroll
   CA_Scroll_Home_Page
CA_Logout
   Logout_Function
Close_Application
   Close All Applications



