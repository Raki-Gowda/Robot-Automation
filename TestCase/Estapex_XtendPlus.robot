*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource    ../Resource/estapex_keywords.robot
Resource    ../Resource/touchELX_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
    Lounch_Prod_App
    Login_and_Verify_OTP
    Estapex_Xtend_Plus_Pairing
    Sleep       10
Estapex_Xtend_Plus_Dashboard_Page
    Estapex_Landing_Page
Estapex_Xtend_Plus_Settings_Page
    Goto_Settings_Page
    Sleep      4
Estapex_Xtend_Plus_Feature_Verification
    Verify_Estapex_Stride_Voice_Features
    Verify_Auto_HR_Features
    Verify_Alarm_Feature
    Verify_Sedentary_Reminder_Feature
    Verify_BT_Calling_Feature
    Verify_Weather_Feature
    Verify_Notification_Feature
    Verify_Estapex_Stride_Voice_watch_control_feature
Fitness_Vitals_Page
    Fitness_Page_Vitals_Details
Vitals_Verification
   Verify_Estapex/TouchELX_Steps_Vitals
   Verify_Estapex/TouchELX_Sleep_Vitals
   Verify_Estapex/TouchELX_HR_Vitals
   Verify_Estapex/TouchELX_SPO2_Vitals
   Sleep    5
   Scroll      ${SPO2_text}          ${Heart_rate_text}
   Verify_Estapex/TouchELX_Stress_Vitals
Estapex_Xtend_Plus_My_Watch_Page
   Estapex_Stride_Voice_My_Watch_Page
Estapex_Xtend_Plus_Verify_Profile_Page
   TouchELX_Lunar_Call_Profile_Page
EstaPex_Xtend_Plus_Home_Page
   Estapex_Stride_Voice_Home_Page
   Close All Applications