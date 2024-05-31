*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot
#Library       AppiumExtended


*** Keywords ***
Lounch_Prod_App1
    Open Application           http://localhost:4723/wd/hub    platformName=Android      app=/Users/cove/Documents/boatApp/prod3.6.5.apk      deviceName=R9ZRB03L25X     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
    Wait Until Page Contains Element        ${Skip_button}         30



*** Test Cases ***
Login_and_Pair_Device
   Lounch_Prod_App1
   Login_and_Verify_OTP
   CY_LunarCallPro_Pairing
   Sleep    10
CY_Lunar_Call_Pro_Dashboard_Page
   CY_Landing_Page
CY_Lunar_Call_Pro_Settings_Page
    Goto_Settings_Page
    Sleep      10
InstallApp
   Open Application           http://localhost:4723/wd/hub    platformName=Android    noReset=true   app=/Users/cove/Documents/boatApp/prod3.6.6.apk      deviceName=R9ZRB03L25X     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
   #Wait Until Page Contains Element        ${Skip_button}         30
CY_Lunar_Call_Pro_Dashboard_Page1
   CY_Landing_Page

#Install_Latest_App
#   Install App       /Users/cove/Documents/boatApp/prod3.6.6.apk            appPackage=com.coveiot.android.boat
Close_App
  Close Application


   
