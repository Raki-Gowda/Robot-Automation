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
    Ultima_prism_Pairing
    Sleep    10
Ultima_Prism_Dashboard_Page
    CY_Landing_Page
Ultima_Prism_Settings_Page
    Goto_Settings_Page
    Sleep      10
Ultima_Prism_Features_Verification
   Verify_opp3_Features
Ultima_Prism_Verify_HR_Feature
   Verify_Auto_HR_Features
Ultima_Prism_Verify_Alarm_Feature
   Verify_Alarm_Feature
Ultima_Prism_Verify_Reminder_Feature
   Verify_Sedentary_Reminder_Feature
   Sleep     4
Ultima_prism_Custom_reminder
    Verify_Custom_reminder_feature
Ultima_Prism_Verify_Nudge_Feature
   Verify_Nudges_Feature
Ultima_Prism_Verify_BTCall_Feature
   Verify_BT_Calling_Feature
Ultima_Prism_Verify_FindWatch_Feature
   Verify_Find_My_Watch_Feature
Ultima_Prism_Verify_Weather_Feature
   Verify_Weather_Feature
Ultima_Prism_Verify_Notification_Feature
   Verify_Notification_Feature
Ultima_Prism_Verify_Watch_Control_Features
   CY_Watch_Control_Feature
Ultima_Prism_Fitness_Vitals_Page
   Fitness_Page_Vitals_Details
   Verify_Steps_Vitals
   Verify_Sleep_Vitals
   Verify_HR_Vitals
   Verify_SPO2_Vitals
   Sleep        5
   Scroll     ${SPO2_text}            ${Steps_Option}
   Verify_Energy_Meter_Vitals
Ultima_Prism_Fitness_Plan
    Fitness_Page_Fitness
#    Fitness_Plan_Page
Ultima_Prism_My_Watch_Page
    CA_Xtend/Storm/StormProCall_My_Watch_Page
Ultima_Prism_Profile_Page
    CA_Pro_Profile_Page
Ultima_Prism_Home_Page
    CY_Home_Page_Verification
    #CA_Scroll_Home_Page
Ultima_Prism_function
    Logout_Function
Close_Application
    Close All Applications
