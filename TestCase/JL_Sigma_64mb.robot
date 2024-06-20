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
    JL_Sigma_pairing
    Sleep    10
JL_Sigma_Dashboard_Page
    CY_Landing_Page
JL_Sigma_Settings_Page
    Goto_Settings_Page
    Sleep      10
JL_Sigma_Features_Verification
   Verify_JL_sigma_Features
JL_Sigma_Verify_HR_Feature
   Verify_Auto_HR_Features
JL_Sigma_QR_feature
    Verify_QR_Feature
JL_Sigma_Verify_Alarm_Feature
   Verify_Alarm_Feature
JL_Sigma_Verify_Reminder_Feature
   Verify_Sedentary_Reminder_Feature
   Sleep     4
JL_Sigma_Verify_Nudge_Feature
   Verify_Nudges_Feature
JL_Sigma_Verify_SOS_feature
   SOS_feature
JL_Sigma_Verify_BTCall_Feature
   Verify_BT_Calling_Feature
JL_Sigma_Verify_FindWatch_Feature
   Verify_Find_My_Watch_Feature
JL_Sigma_Verify_Notification_Feature
   Verify_Notification_Feature
JL_Sigma_Verify_Watch_Control_Features
   JL_Watch_Control_Feature
JL_Sigma_Fitness_Vitals_Page
   Fitness_Page_Vitals_Details
   Verify_Steps_Vitals
   Verify_Sleep_Vitals
   Verify_HR_Vitals
   Verify_SPO2_Vitals
   Sleep        5
   Scroll     ${SPO2_text}            ${Steps_Option}
   Verify_Energy_Meter_Vitals
JL_Sigma_Fitness_Plan
    Fitness_Page_Fitness
#    Fitness_Plan_Page
JL_Sigma_My_Watch_Page
    JL_My_Watch_Page
JL_Sigma_Profile_Page
    CA_Pro_Profile_Page
JL_Sigma_Home_Page
    CY_Home_Page_Verification
    #CA_Scroll_Home_Page
JL_Sigma_function
    Logout_Function
Close_Application
    Close All Applications
