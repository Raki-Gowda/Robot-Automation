*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../Resource/keywords.robot
Resource     ../Resource/ca_pro_keywords.robot
Resource     ../Resource/cy_keywords.robot
#Library       AppiumExtended


*** Keywords ***
Install_Prod_App  # Note: APK verison in app capabilities need to change as required
    Open Application           http://localhost:4723/wd/hub    platformName=Android      app=/Users/cove/Documents/boatApp/prod3.6.5.apk      deviceName=R9ZRB03L25X     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
    Wait Until Page Contains Element        ${Skip_button}         30

Install_App_To_Update   # Note: APK verison in app capabilities need to change as required
   Open Application           http://localhost:4723/wd/hub    platformName=Android    noReset=true   app=/Users/cove/Documents/boatApp/prod3.6.6.apk      deviceName=R9ZRB03L25X     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
   #Wait Until Page Contains Element        ${Skip_button}         30


CY_Home_Page_After_App_Update
  # Dashboard
    Sleep    20
    Wait Until Page Contains Element     ${Home_Icon}           30
    Wait Until Page Contains Element     ${Home_Icon}
    Wait Until Page Contains Element    ${Fitness_Icon}
    Wait Until Page Contains Element    ${MyWatch_Icon}
    Wait Until Page Contains Element    ${FitCrew_Icon}
    Wait Until Page Contains Element    ${Settings_Icon}
    Wait Until Page Contains Element     ${Boat_Logo}
    Wait Until Page Contains Element    ${Blueetooth_Text}
    Wait Until Page Contains Element     ${Connect_Text}
    Wait Until Page Contains Element    ${BT_Calltext}
    Wait Until Page Contains Element     ${Watch_Image}
    Wait Until Page Contains Element     ${Battery_Icon}
    Wait Until Page Contains Element     ${Setup_your_Watch_text}
    Dashboard_Skip_Notification_Settings_Feature
    Weekly_Report_Subscription

Check_Option_After_App_Update
  Wait Until Page Contains Element       ${Home_Icon}       30
  Wait Until Page Contains Element       ${MyWatch_Icon}    20
  Click Element        ${MyWatch_Icon}
  Wait Until Page Contains Element        ${Fitness_Icon}     20
  Click Element      ${Fitness_Icon}
  Wait Until Page Contains Element     ${FitCrew_Icon}      20
  Click Element       ${FitCrew_Icon}
  Wait Until Page Contains Element       ${Home_Icon}    20
  Click Element        ${Home_Icon}

Vital_Page_Tap
   Wait Until Page Contains Element         ${Fitness_Icon}       20
   Click Element       ${Fitness_Icon}
   Wait Until Page Contains Element        ${Vitals_Details_text}     20
   Click Element         ${Vitals_Details_text}
   Wait Until Page Contains Element          ${Steps_Option}     20
   Click Element       ${Steps_Option}

   Wait Until Page Contains Element        ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}        20
   Wait Until Page Contains Element         ${Close_ShareCard}  20
   Click Element                            ${Close_ShareCard}
   Wait Until Page Contains Element       ${Steps_Option}       20
   Scroll     ${SPO2_text}            ${Steps_Option}
   Wait Until Page Contains Element     ${Stress_text}     20
   Click Element         ${Stress_text}
   Wait Until Page Contains Element    ${HRV_text}     20
   Click Element         ${HRV_text}
   Wait Until Page Contains Element    ${HRV_text}    20
   Click Element        ${HRV_text}

MyWatch_Page_Tap
   Wait Until Page Contains Element      ${MyWatch_Icon}     20
   Click Element                         ${MyWatch_Icon}
   #Wait Until Page Contains Element          ${watch_name_textin_mywatch_tab}     20
   Wait Until Page Contains Element        ${BT_status_text}       20
   #Element Should Contain Text      ${watch_name_text}      Cosmos Pro
#   Element Should Be Visible          ${Cosmos_watchface}
   Element Should Be Visible          ${BT_status_text}
   Element Should Be Visible          ${Battery_status_text}
   Element Should Be Visible         ${Sync_status_text}
   Element Should Be Visible         ${Watch_Settings_option}
   Element Should Be Visible         ${watch_face_option}
   Wait Until Page Contains Element          ${watch_face_option}     20
   Click Element         ${watch_face_option}
   Wait Until Page Contains Element         ${Cloud_watch_option}     20
   Wait Until Page Contains Element          ${Default_watch_option}    20
   Wait Until Page Contains Element        ${Back_arrow}       20
   Click Element                 ${Back_arrow}

Tap_On_CY_Watch_Features
   Verify_Auto_HR_Features
   Wait Until Page Contains Element       ${Auto_activity_feature}        20
   Click Element           ${Auto_activity_feature}
   Wait Until Page Contains Element     ${Back_arrow}     20
   Click Element      ${Back_arrow}

   Wait Until Page Contains Element        ${Auto_Stress&HRV_feature}      20
   Click Element           ${Auto_Stress&HRV_feature}
   Wait Until Page Contains Element     ${Back_arrow}     20
   Click Element      ${Back_arrow}

   Wait Until Page Contains Element         ${Nightly_breathing_feature}       20
   Click Element           ${Nightly_breathing_feature}
   Wait Until Page Contains Element     ${Back_arrow}     20
   Click Element      ${Back_arrow}

   Wait Until Page Contains Element         ${Sedentary_reminder_feature}      20
   Click Element          ${Sedentary_reminder_feature}
   Wait Until Page Contains Element     ${Back_arrow}     20
   Click Element      ${Back_arrow}

Validate_Updated_App_Version
   Wait Until Page Contains Element     ${Back_arrow}    20
   Click Element      ${Back_arrow}
   Wait Until Page Contains Element     ${About_watch}    20
   Click Element    ${About_watch}
   Wait Until Page Contains Element     ${App_Version}      20
   ${App_Version1}   Get Text      ${App_Version}
   Should Be Equal      ${App_Version1}      ${Latest_App_Version}










