*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource    ../Resource/keywords.robot



*** Test Cases ***
Wellness
    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2    noReset=true    fullReset=false
    Sleep      30
     Verify_Welness_page_details
     Verify_Steps_Wellness
     verify_activities_wellness
     verify_vitals_wellness
     Verify_HR_Vitals_welness
     Verify_SPO2_vitals_welness
     Verify_Energy_Meter_Vitals_wellness
     verify_Restore_wellness
     Verify_Sleep_Vitals_Wellness