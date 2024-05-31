*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cz_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
#    Lounch_Prod_App
#    Login_and_Verify_OTP
    Launch_Prod_App_from_pair
    CZ_WavePrime_Pairing_Devices
    Sleep    10
CZ_WavePrime_Dashboard_Page
   CZ_Landing_Page
CZ_WavePrime_Settings_Page
    Goto_Settings_Page
    Sleep      10
CZ_WavePrime_Features_Verification
   Verify_WavePrime_Features_Display
   Verify_Auto_HR_Features
   Verify_Sedentary_Reminder_Feature
   Verify_CZ_Nudges_Feature
   Verify_Find_My_Watch_Feature
   Verify_Weather_Feature
   Verify_Notification_Feature
   Watch_Control_Feature
CZ_WavePrime_Fitness_Vitals_Page
    Fitness_Page_Vitals_Details
    Verify_Steps_Vitals
    Verify_Sleep_Vitals
    Verify_HR_Vitals
    Verify_SPO2_vitals
    Scroll     ${SPO2_text}        ${Sleep_text}
    Verify_Energy_Meter_Vitals
    Verify_Temperature_Vitals
#CZ_WavePrime_Fitness_Plan
#    Fitness_Page_Fitness
#    Fitness_Plan_Page
CZ_WavePrime_My_Watch_Page
    CZ_XtendSport_Verify_My_Watch_Page
CZ_WavePrime_Profile_Page
    CZ_Verify_Profile_Page
CZ_WavePrime_Home_Page
    CZ_XtendSport_Verify_Home_Page
Close_App
    Close All Applications