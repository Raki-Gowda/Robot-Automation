*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_Pair_Device
#    Lounch_Prod_App
#    Login_and_Verify_OTP
    Launch_Prod_App_from_pair
    SC3+_Pairing
    Sleep    10
SC3+_Dashboard_Page
    CY_Landing_Page
SC3+_Settings_Page
    Goto_Settings_Page
    Sleep      10
SC3+_Features_Verification
   Verify_SC3+_Features
SC3+_Verify_HR_Feature
   Verify_Auto_HR_Features
SC3+_Verify_Alarm_Feature
   Verify_Alarm_Feature
SC3+_Verify_Reminder_Feature
   Verify_Sedentary_Reminder_Feature
   Sleep     4
SC3+_Verify_Nudge_Feature
   Verify_Nudges_Feature
SC3+_Verify_BTCall_Feature
   Verify_BT_Calling_Feature
SC3+_Verify_FindWatch_Feature
   Verify_Find_My_Watch_Feature
SC3+_Verify_Navigation_Feature
   Verify_navigation_feature
SC3+_Verify_Notification_Feature
   Verify_Notification_Feature
SC3+_SOS_feature
   SOS_feature
SC3+_Verify_Watch_Control_Features
   CY_Watch_Control_Feature
SC3+_Fitness_Vitals_Page
   Fitness_Page_Vitals_Details
   Verify_Steps_Vitals
   Verify_Sleep_Vitals
   Verify_HR_Vitals
   Verify_SPO2_Vitals
   Sleep        5
   Scroll     ${SPO2_text}            ${Steps_Option}
   Verify_Energy_Meter_Vitals
SC3+_Fitness_Plan
    Fitness_Page_Fitness
#    Fitness_Plan_Page
SC3+_My_Watch_Page
    SC3+_Mywatch
SC3+_Profile_Page
    CA_Pro_Profile_Page
SC3+_Home_Page
    CY_Home_Page_Verification
    #CA_Scroll_Home_Page
Ultima_Prism_function
    Logout_Function
Close_Application
    Close All Applications
