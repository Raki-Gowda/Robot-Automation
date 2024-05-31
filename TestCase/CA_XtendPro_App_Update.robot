*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/app_update_keyword.robot

*** Test Cases ***
Login_and_Pair_Device
   Install_Prod_App
Verify_OTP
   Login_and_Verify_OTP
CA_XtendPro_Pairing
   CA_XtendPro_Pairing
   Sleep    10
CA_XtendPro_Dashboard_Page
   CA_Pro_Landing_Page
CA_XtendPro_Settings_Page
   Goto_Settings_Page
Close_App
   Close Application
Install_Latest_App_To_Update
   Install_App_To_Update
CA_Tap_On_Watch_And_Check
   Check_Option_After_App_Update
CA_XtendPro_Dashboard_Page_After_Update
   CY_Home_Page_After_App_Update
CA_XtendPro_Vitals_Page_Check
   Vital_Page_Tap
CA_XtendPro_Mywatch_Page_Check
   MyWatch_Page_Tap
CA_XtendPro_Settings_Check
   Goto_Settings_Page
CA_XtendPro_Features
   Tap_On_CY_Watch_Features
CA_XtendPro_App_Version_Validation
   Validate_Updated_App_Version
Close_App2
   Close Application

