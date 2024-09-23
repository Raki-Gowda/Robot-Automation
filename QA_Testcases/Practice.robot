*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot



*** Test Cases ***
Login_and_Pair_Device
##    Lounch_Prod_App
##    Login_and_Verify_OTP
#        Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2    noReset=true    fullReset=false
#CY_Lunar_Call_Pro_Settings_Page
#    Goto_Settings_Page
#    Verify_Find_My_Watch_Feature
#    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.google.android.apps.messaging    appActivity=com.google.android.apps.messaging.ui.ConversationListActivity     automationName=Uiautomator2    noReset=true    fullReset=false
#    Sleep    4
#    Click Element    //android.widget.TextView[@resource-id="com.google.android.apps.messaging:id/conversation_name" and @text="JM-KAHTGS"]
#    Sleep    4
#    Close Application
#    Sleep    2
    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2    noReset=true    fullReset=false
    Background Application    10

