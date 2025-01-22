*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot

*** Test Cases ***
Login_and_pair
    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2    noReset=true    fullReset=false
    Sleep    30
    Wait Until Page Contains Element         ${Settings_Icon}        20
    Click Element                             ${Settings_Icon}
    Wait Until Page Contains Element         ${Watch_feature_text}       10
    Click Element                            ${Watch_feature_text}
oasis_Features_Verification
   Verify_oasis_Features
#    Scroll Element Into View    com.coveiot.android.boat:id/tvboatExclusiveHeader
oasis_Verify_AAD_Feature
   Verify_AAD_Feature
oasis_Verify_HR_Feature
   Verify_Auto_HR_Features
oasis_Verify_Alarm_Feature
   Verify_Alarm_Feature
oasis_QR_feature
    Verify_QR_Feature
oasis_Verify_NBR_Feature
   Verify_NBR_Feature
oasis_Verify_Reminder_Feature
   Verify_Sedentary_Reminder_Feature
   Sleep     4
oasis_Custom_reminder
    Verify_Custom_reminder_feature
oasis_Verify_Stress_Feature
   Verify_Stress&HRV_Feature
oasis_Verify_Nudge_Feature
   Verify_Nudges_Feature
oasis_Verify_BTCall_Feature
   Verify_BT_Calling_Feature
oasis_Verify_FindWatch_Feature
   Verify_Find_My_Watch_Feature
oasis_Verify_Weather_Feature
   Verify_Weather_Feature
oasis_Verify_Navigation_Feature
   Verify_navigation_feature
oasis_Verify_Notification_Feature
   Verify_Notification_Feature
oasis_Pro_Verify_Watch_Control_Features
   CY_Watch_Control_Feature

