*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/app_update_keyword.robot


*** Test Cases ***
Login_and_Pair_Device
   Install_Prod_App
Verify_OTP
   Login_and_Verify_OTP
CY_Lunar_Call_Pro_Pairing
   CY_WavePrimiaTalk_Pairing
   Sleep    10
CY_Lunar_Call_Pro_Dashboard_Page
   CY_Landing_Page
CY_Lunar_Call_Pro_Settings_Page
   Goto_Settings_Page
Close_App
  Close Application
Install_Latest_App_To_Update
   Install_App_To_Update
CY_Tap_On_Watch_And_Check
   Check_Option_After_App_Update
CY_Lunar_Call_Pro_Dashboard_Page_After_Update
   CY_Home_Page_After_App_Update
CY_Lunar_Call_Pro_Vitals_Page_Check
   Vital_Page_Tap
CY_Lunar_Call_Pro_Mywatch_Page_Check
   MyWatch_Page_Tap
CY_Lunar_Call_Pro_Settings_Check
   Goto_Settings_Page
CY_Lunar_Call_Pro_Features
   Tap_On_CY_Watch_Features
CY_Wave_Primia_Talk_App_Version_Validation
   Validate_Updated_App_Version
Close_App2
   Close Application
