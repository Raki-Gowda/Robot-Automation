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
    CZ_XtendSport_Pairing_Devices
    Sleep       10
CZ_Xtend_Sport_Dashboard_Page
    CZ_Landing_Page
CZ_Xtend_Sport_Settings_Page
    Goto_Settings_Page
    Sleep      10
CZ_Xtend_Sport_Features_Verification
    Verify_XtendSport_Features_Display
    Verify_Auto_HR_Features
    Verify_Sedentary_Reminder_Feature
    Verify_Find_My_Watch_Feature
    Verify_Notification_Feature
    Verify_CZ_Watch_Control_Feature
CZ_Xtend_Sport_Fitness_Vitals_Page
    Fitness_Page_Vitals_Details
    Verify_Steps_Vitals
    Verify_Sleep_Vitals
    Verify_HR_Vitals
    Verify_SPO2_Vitals
    Sleep        5
    Scroll     ${SPO2_text}        ${Sleep_text}
    Verify_Energy_Meter_Vitals
    Verify_Temperature_Vitals
#CZ_Xtend_Sport_Fitness_Plan
#    Fitness_Page_Fitness
#    Fitness_Plan_Page
CZ_Xtend_Sport_My_Watch_Page
    CZ_XtendSport_Verify_My_Watch_Page
CZ_Xtend_Sport_Profile_Page
    CA_Pro_Profile_Page
CZ_Xtend_Sport_Home_Page
    CZ_XtendSport_Verify_Home_Page

    Close All Applications




