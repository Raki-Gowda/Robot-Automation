*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/touchELX_keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/estapex_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
#    Lounch_Prod_App
#    Login_and_Verify_OTP
    Launch_Prod_App_from_pair
    Touch_ELX_Lunar_Connect_Plus_Pairing
    Sleep       10
TouchELX_Lunar_Connect_Plus_Dashboard_Page
    TouchELX_Lunar_Call_Landing_Page
TouchELX_Lunar_Connect_Plus_Settings_Page
    Goto_Settings_Page
TouchELX_Lunar_Connect_Plus_Features_Verification
    Verify_TouchELX_Lunar_Call_Features
    Verify_Auto_HR_Features
    TouchELX_Verify_Auto_Stress_Feature
    TouchELX_Verify_Auto_SPO2_Feature
    Verify_TouchELX_Alarm_Feature
    Verify_Sedentary_Reminder_Feature
    TouchELX_Verify_Drink_Water_Reminder_Feature
    Sleep    3
    Scroll        ${TouchELX_Drink_Water_feature}        ${Auto_HR_feature}
    TouchELX_Verify_Event_Reminder_Feature
    Verify_BT_Calling_Feature
    TouchELX_Verify_Find_My_Watch_Feature
    Verify_Weather_Feature
    TouchELX_Verify_Notification_Feature
    TouchELX_Verify_Remote_Camera_Control_Feature
    TouchELX_Verify_Short_Cut_Feature
    TouchELX_Verify_Sport_Type_Feature
TouchELX_Fitness_Vitals_Page
    Fitness_Page_Vitals_Details
    Verify_Estapex/TouchELX_Steps_Vitals
    Verify_Estapex/TouchELX_Sleep_Vitals
    Verify_Estapex/TouchELX_HR_Vitals
    Verify_Estapex/TouchELX_SPO2_Vitals
    Sleep        5
    Scroll     ${SPO2_text}            ${Steps_Option}
    Verify_Estapex/TouchELX_Stress_Vitals
#TouchELX_Lunar_Connect_Plus_Fitness_Plan
#    Fitness_Page_Fitness
#    Fitness_Plan_Page
TouchElX_Lunar_Connect_Plus_Watch_Page
    TouchELX_Lunar_Call_My_Watch_Page_Feature
TouchELX_Lunar_Connect_Plus_Profile_Page
    TouchELX_Lunar_Call_Profile_Page
TouchELX_Lunar_Connect_Plus_Home_Page
   TouchELX_Lunar_Call_Home_Page_Verification
   Close All Applications

