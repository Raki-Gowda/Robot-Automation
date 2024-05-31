*** Settings ***
Library      AppiumLibrary
Resource     ../Resource/locators.robot

*** Test Cases ***
Login_and_Pair_Device
    Open Application           http://localhost:4723/wd/hub    platformName=Android   deviceName=R9ZRB03L25X    appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
    Sleep    20
    Click Element      ${Skip_button}
    Wait Until Page Contains Element     ${Enter_Phone_Number}       20
    Input Text       ${Enter_Phone_Number}       8050904029
    Wait Until Page Contains Element       ${Terms_Checkbox}         10
    Click Element        ${Terms_Checkbox}
    Wait Until Page Contains Element     ${Submit_button}     10
    Click Element        ${Submit_button}
    Sleep    30
#    Input Text        //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[1]        9
#    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[2]         0
#    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[3]         2
#    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[4]         9

    Wait Until Page Contains Element    ${OTP_Submitt_button}          30
    Click Element        ${OTP_Submitt_button}
    Wait Until Page Contains Element   ${Permission_submitt_button}       20
    Click Element    ${Permission_submitt_button}
    Wait Until Page Contains Element   ${System_Persmission1}      20
    Click Element    ${System_Persmission1}
    Wait Until Page Contains Element    ${System_Persmission2}        20
    Click Element    ${System_Persmission2}
    Wait Until Page Contains Element    	${System_Persmission3}         20
    Click Element      	 ${System_Persmission3}
    Wait Until Page Contains Element   ${System_Persmission4}           20
    Click Element     ${System_Persmission4}
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}        Cosmos Pro
    Wait Until Page Contains Element     ${Tap_on_Device}        20
    Click Element      ${Tap_on_Device}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element   ${Search_watch_ID}           30
    Click Element      ${Search_watch_ID}
    Wait Until Page Contains Element   ${Blueetooth_pair_OK}        30
    Click Element     ${Blueetooth_pair_OK}
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}
    Sleep       10
Dashboard_Page
  # Dashboard
    Wait Until Page Contains Element    ${Home_Icon}           30
    Element Should Be Visible    ${Home_Icon}
    Element Should Be Visible    ${Fitness_Icon}
    Element Should Be Visible    ${MyWatch_Icon}
    Element Should Be Visible    ${FitCrew_Icon}
    Element Should Be Visible    ${Settings_Icon}
    Element Should Be Visible     ${Boat_Logo}
    Element Should Be Visible    ${Blueetooth_Text}
    Element Should Be Visible     ${Connect_Text}
    Element Should Be Visible     ${BT_Calltext}
    Element Should Be Visible     ${Watch_Image}
    Element Should Be Visible     ${Battery_Icon}
    Element Should Be Visible     ${Setup_your_Watch_text}

Watch_Setings_page
    Wait Until Page Contains Element         ${Settings_Icon}        20
    Click Element                             ${Settings_Icon}

    ##Watch Settings
    Wait Until Page Contains Element         ${System_settings_text}       10
    Click Element                            ${System_settings_text}
    Wait Until Page Contains Element         ${Watch_settings_text}    10
    Click Element                            ${Watch_settings_text}
    Element Should Be Visible                ${Connected_text}
    Wait Until Page Contains Element         ${Watch_feature_text}       10
    Click Element                            ${Watch_feature_text}
    Sleep      8
    #Element Should Be Visible     //android.widget.TextView[@text="Watchfaces"]
    Element Should Be Visible      ${Auto_activity_feature}
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Auto_Stress&HRV_feature}
    Element Should Be Visible     ${Nightly_breathing_feature}
    Element Should Be Visible     ${Female_Wellness_feature}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Scroll          ${Sedentary_reminder_feature}           ${Nightly_breathing_feature}
    Element Should Be Visible     ${Nudges_feature}
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Weather_feature}
    Element Should Be Visible     ${Notification_feature}
    Scroll        ${Female_Wellness_feature}                  ${Nudges_feature}

   #AAD
    Wait Until Page Contains Element       ${Auto_activity_feature}        20
    Click Element                          ${Auto_activity_feature}

    Wait Until Page Contains Element         ${AAD_Pop_OK_button}        20
    Click Element                         ${AAD_Pop_OK_button}
    Sleep      10

    Wait Until Page Contains Element          ${Enbale/Disable_AAD}      20
    Click Element                               ${Enbale/Disable_AAD}

    Wait Until Page Contains Element      ${Save_button}           20
    Click Element                         ${Save_button}

    Wait Until Page Contains Element       ${Ok_button}      20
    Click Element                          ${Ok_button}



    ##Auto HR
    Wait Until Page Contains Element          ${Auto_HR_feature}      20
    Click Element                             ${Auto_HR_feature}
    Wait Until Page Contains Element           ${Enable/Disable_autoHR}     20
    Click Element                              ${Enable/Disable_autoHR}
    Wait Until Page Contains Element          ${HR_Save_button}       20
    Click Element                             ${HR_Save_button}
    Wait Until Page Contains Element          ${Ok_button}        20
    Click Element                             ${Ok_button}


    #Auto Stress
    Wait Until Page Contains Element         ${Auto_Stress&HRV_feature}   20
    Click Element                            ${Auto_Stress&HRV_feature}
    Wait Until Page Contains Element             ${Enable/Disbale_stress}       20
    Click Element                               ${Enable/Disbale_stress}

    Wait Until Page Contains Element             ${Stress_Save_button}    20
    Click Element                                 ${Stress_Save_button}

    Wait Until Page Contains Element          ${Ok_button}         20
    Click Element                ${Ok_button}



    #NBR

    Wait Until Page Contains Element         ${Nightly_breathing_feature}      20
    Click Element          ${Nightly_breathing_feature}

    Wait Until Page Contains Element       ${Enable/Disable_Respiratory}          20
    Click Element              ${Enable/Disable_Respiratory}

    Wait Until Page Contains Element          ${NBR_Save}                  20
    Click Element       ${NBR_Save}

    Wait Until Page Contains Element          ${Ok_button}             20
    Click Element                ${Ok_button}

    #Alarm
#    Wait Until Page Contains Element         //android.widget.TextView[@text="Alarms"]        20
#    Click Element                    //android.widget.TextView[@text="Alarms"]
#    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/add_alarm_btn      20
#    Click Element                   com.coveiot.android.boat.qa:id/add_alarm_btn
#    Wait Until Page Contains Element       //android.widget.Button[@text="OK"]         20
#    Click Element                      //android.widget.Button[@text="OK"]
#    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/save_alarm_btn        20
#    Click Element         com.coveiot.android.boat.qa:id/save_alarm_btn
#    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn          20
#    Click Element             com.coveiot.android.boat.qa:id/positive_btn


    #Sedentary
    Wait Until Page Contains Element           ${Sedentary_reminder_feature}    20
    Click Element           ${Sedentary_reminder_feature}

    Wait Until Page Contains Element          ${Enable/Disable_sedentary}      20
    Click Element                ${Enable/Disable_sedentary}

    Wait Until Page Contains Element     ${Sedentary_Save}           20
    Click Element                       ${Sedentary_Save}
    Wait Until Page Contains Element         ${Ok_button}      20
    Click Element            ${Ok_button}
    Sleep       8

    #Nudges
    Scroll           ${Nudges_feature}         ${Auto_HR_feature}
    Wait Until Page Contains Element              ${Nudges_feature}     20
    Click Element           ${Nudges_feature}

    Wait Until Page Contains Element           ${Enable/Disbale_Nudge}         20
    Click Element                    ${Enable/Disbale_Nudge}


    Wait Until Page Contains Element     ${Nudge_Save}      20
    Click Element                        ${Nudge_Save}

    Wait Until Page Contains Element         ${Ok_button}       20
    Click Element           ${Ok_button}

    #Bleetooth Calling
    Wait Until Page Contains Element          ${BT_calling__feature}       20
    Click Element           ${BT_calling__feature}

    Wait Until Page Contains Element             ${Back_arrow}        10
    Click Element                        ${Back_arrow}

    #Find My watch
    Wait Until Page Contains Element              ${Find_watch_feature}       20
    Click Element         ${Find_watch_feature}
    Wait Until Page Contains Element               ${Save_button}   20
    Click Element        ${Save_button}
    Element Should Be Visible         ${Find_watch_text}
    Wait Until Page Contains Element               ${Save_button}     20
    Click Element        ${Save_button}
    Wait Until Page Contains Element         ${Back_arrow}     10
    Click Element      ${Back_arrow}

    #weather
    Wait Until Page Contains Element      ${Weather_feature}   10
    Click Element        ${Weather_feature}
    Wait Until Page Contains Element           ${Enable/Disbale_weather}    10
    Click Element     ${Enable/Disbale_weather}
    Wait Until Page Contains Element       ${Save_button}    10
    Click Element       ${Save_button}
    Wait Until Page Contains Element         ${Ok_button}    10
    Click Element      ${Ok_button}
    Wait Until Page Contains Element          ${Ok_button}     10
    Click Element       ${Ok_button}
    Wait Until Page Contains Element          ${Permission_text}   10
    Click Element        ${Permission_text}
    Wait Until Page Contains Element          ${Location_text}   10
    Click Element       ${Location_text}
    Wait Until Page Contains Element       ${Allow_always_radion_button}    10
    Click Element        ${Allow_always_radion_button}
    Wait Until Page Contains Element      ${Back_option}    10
    Click Element      ${Back_option}
    Wait Until Page Contains Element       ${Back_option}   10
    Click Element       ${Back_option}
    Wait Until Page Contains Element       ${Navigate_back}   10
    Click Element         ${Navigate_back}
    Wait Until Page Contains Element          ${Enable/Disbale_weather}   10
    Click Element     ${Enable/Disbale_weather}
    Wait Until Page Contains Element       ${Save_button}   10
    Click Element       ${Save_button}
    Wait Until Page Contains Element      ${Ok_button}    10
    Click Element        ${Ok_button}
    #Notification

    Wait Until Page Contains Element          ${Notification_feature}    10
    Click Element         ${Notification_feature}
    Wait Until Page Contains Element           ${Enbale/Disbale_Call_Notification}   20
    Click Element        ${Enbale/Disbale_Call_Notification}
    Wait Until Page Contains Element       ${Call&Other_Permisson_option}     20
    Click Element      ${Call&Other_Permisson_option}
    Wait Until Page Contains Element      ${Call&Other_Permisson_option}   20
    Click Element         ${Call&Other_Permisson_option}
    Wait Until Page Contains Element       ${Call&Other_Permisson_option}  20
    Click Element         ${Call&Other_Permisson_option}
    Wait Until Page Contains Element        ${Enable_boat_notification}        10
    Click Element        ${Enable_boat_notification}
    Wait Until Page Contains Element       ${boat_system_permission}      20
    Click Element             ${boat_system_permission}
    Wait Until Page Contains Element      ${Navigate_back}      20
    Click Element            ${Navigate_back}

    Wait Until Page Contains Element        ${Enable/Disable_SMS_notification}   20
    Click Element          ${Enable/Disable_SMS_notification}
    Wait Until Page Contains Element        ${Save_button}        20
    Click Element            ${Save_button}
    Wait Until Page Contains Element     ${Ok_button}   20
    Click Element          ${Ok_button}
    Wait Until Page Contains Element       ${Back_arrow}    20
    Click Element       ${Back_arrow}

#watch Control
    Wait Until Page Contains Element         ${Watch_control_feature}         20
    Click Element        ${Watch_control_feature}
    Wait Until Page Contains Element        ${DND_feature}    20
    Click Element          ${DND_feature}
    Wait Until Page Contains Element      ${Enable/Disable_DND}    20
    Click Element              ${Enable/Disable_DND}
    Wait Until Page Contains Element       ${Save_button}   20
    Click Element            ${Save_button}
    Wait Until Page Contains Element          ${Ok_button}    20
    Click Element                            ${Ok_button}
    Wait Until Page Contains Element          ${Quick_Reply_feature}      20
    Click Element                  ${Quick_Reply_feature}
    Wait Until Page Contains Element          ${Enable/Disable_QuickReply}   20
    Click Element              ${Enable/Disable_QuickReply}
    Wait Until Page Contains Element        ${Done_buttton}   20
    Click Element           ${Done_buttton}
    Wait Until Page Contains Element        ${Ok_button}     20
    Click Element              ${Ok_button}
    Wait Until Page Contains Element         ${SMS_permission}   20
    Click Element        ${SMS_permission}
    Wait Until Page Contains Element       ${Call_logs_text}          20
    Scroll         ${SMS_Notification_text}          ${Call_logs_text}
    Wait Until Page Contains Element        ${SMS_Text}      20
    Click Element      ${SMS_Text}
    Wait Until Page Contains Element            ${Allow_radio_button}       20
    Click Element          ${Allow_radio_button}
    Wait Until Page Contains Element        ${Back_option}       20
    Click Element          ${Back_option}
    Wait Until Page Contains Element         ${Back_option}       20
    Click Element             ${Back_option}
    Wait Until Page Contains Element          ${Navigate_back}      20
    Click Element               ${Navigate_back}
    Wait Until Page Contains Element          ${Enable/Disable_QuickReply}      20
    Click Element             ${Enable/Disable_QuickReply}
    Wait Until Page Contains Element        ${Manage_quick_reply_option}        20
    Click Element           ${Manage_quick_reply_option}
    Wait Until Page Contains Element            ${Busy_text}    20
    Element Should Be Visible         ${Driving_text}
    Element Should Be Visible         ${Unable_text}
    Element Should Be Visible         ${At_work_text}
    Element Should Be Visible          ${Sleeping_text}
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element               ${Back_arrow}
    Wait Until Page Contains Element         ${Back_arrow}      20
    Click Element              ${Back_arrow}
    Wait Until Page Contains Element         ${Lift_view_option}     20
    Click Element            ${Lift_view_option}
    Wait Until Page Contains Element        ${Ok_button}      20
    Click Element           ${Ok_button}
    Wait Until Page Contains Element          ${Distnace_unit_text}      20
    Click Element          ${Distnace_unit_text}
    Wait Until Page Contains Element        ${OK_popup}      20
    Click Element           ${OK_popup}
    Wait Until Page Contains Element         ${Ok_button}    20
    Click Element          ${Ok_button}
    Wait Until Page Contains Element         ${Select_HR}   20
    Click Element           ${Select_HR}
    Wait Until Page Contains Element        ${OK_popup}       20
    Click Element          ${OK_popup}
    Wait Until Page Contains Element         ${Ok_button}    20
    Click Element        ${Ok_button}
    Wait Until Page Contains Element      ${Back_arrow}     20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element         ${About_watch}     20
    Click Element        ${About_watch}
    Wait Until Page Contains Element           ${Cosmos_pro_watch_name}      20
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element       ${Back_arrow}

Fitness_Tab
   Wait Until Page Contains Element             ${Fitness_Icon}       20
   Click Element     ${Fitness_Icon}
   Wait Until Page Contains Element        ${Vitals_Details_text}     20
   Click Element         ${Vitals_Details_text}
   Wait Until Page Contains Element          ${Steps_Option}     20
   Click Element       ${Steps_Option}


   ##Steps
   #Days
   Wait Until Page Contains Element        ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}        20
   Wait Until Page Contains Element         ${Close_ShareCard}  20
   Click Element                            ${Close_ShareCard}
   #Week
   Wait Until Page Contains Element         ${Week_text}       20
   Click Element                            ${Week_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                            ${Close_ShareCard}
   #Month
   Wait Until Page Contains Element         ${Month_text}       20
   Click Element                            ${Month_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}     20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}     20
   Click Element                            ${Close_ShareCard}

##Sleep
   Wait Until Page Contains Element          ${Sleep_text}      10
   Click Element       ${Sleep_text}
   #Day
   Wait Until Page Contains Element         ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}      20
   Wait Until Page Contains Element        ${desclimer_text}    20
   Wait Until Page Contains Element        ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                            ${Close_ShareCard}
   #Week
   Wait Until Page Contains Element        ${Week_text}       20
   Click Element                            ${Week_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element        ${Cove_logo}      20
   Wait Until Page Contains Element        ${Powerd_by_covetext}      20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element        ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}     20
   Click Element                            ${Close_ShareCard}
   #Month
   Wait Until Page Contains Element         ${Month_text}      20
   Click Element                           ${Month_text}
   Wait Until Page Contains Element         ${Share_Icon}   20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}


##Heart Rate
   Wait Until Page Contains Element          ${Heart_rate_text}      10
   Click Element        ${Heart_rate_text}
   Wait Until Page Contains Element         ${Days_tab}     20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}   20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}       20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                            ${Close_ShareCard}
   #Week
   Wait Until Page Contains Element         ${Week_text}       20
   Click Element                            ${Week_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element        ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}        20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element        ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}
   #Month
   Wait Until Page Contains Element         ${Month_text}        20
   Click Element                            ${Month_text}
   Wait Until Page Contains Element          ${Share_Icon}   20
   Click Element                             ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element        ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}


##SPO2
   Wait Until Page Contains Element          ${SPO2_text}      10
   Click Element       ${SPO2_text}

   Wait Until Page Contains Element       ${Share_Icon}   20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}     20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}    20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}

   Sleep        10
   Scroll     ${SPO2_text}            ${Steps_Option}

##Stress_Level
   Wait Until Page Contains Element     ${Stress_text}     20
   Click Element         ${Stress_text}

   #Days
   Wait Until Page Contains Element        ${Days_tab}       20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element        ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element        ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                            ${Close_ShareCard}
   #Week
   Wait Until Page Contains Element        ${Week_text}      20
   Click Element                           ${Week_text}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element                           ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element        ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}
   #Month
   Wait Until Page Contains Element         ${Month_text}       20
   Click Element                            ${Month_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}      20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}

##HRV
   Wait Until Page Contains Element    ${HRV_text}     20
   Click Element         ${HRV_text}
   #Days
   Wait Until Page Contains Element         ${Days_tab}       20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}        20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}      20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}
   #Week
   Wait Until Page Contains Element         ${Week_text}       20
   Click Element                            ${Week_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}      20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                            ${Close_ShareCard}
   #Month
   Wait Until Page Contains Element         ${Month_text}      20
   Click Element                            ${Month_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}

##NBR
   Wait Until Page Contains Element        ${NBR_Text}          20
   Click Element         ${NBR_Text}

   #Days
   Wait Until Page Contains Element        ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element        ${Cove_logo}      20
   Wait Until Page Contains Element        ${Powerd_by_covetext}      20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                            ${Close_ShareCard}
   #Week
   Wait Until Page Contains Element         ${Week_text}       20
   Click Element                            ${Week_text}
   Wait Until Page Contains Element         ${Share_Icon}   20
   Click Element                            ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}    20
   Wait Until Page Contains Element         ${Powerd_by_covetext}      20
   Wait Until Page Contains Element        ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element        ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}
   #Month
   Wait Until Page Contains Element        ${Month_text}        20
   Click Element                            ${Month_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                           ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}     20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}

##Energy_Meter
   Wait Until Page Contains Element          ${Energy_meter_text}          20
   Click Element        ${Energy_meter_text}

   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      8
   Wait Until Page Contains Element        ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element        ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}


MyWatch_Tab
   Wait Until Page Contains Element      ${MyWatch_Icon}     20
   Click Element                         ${MyWatch_Icon}
   #Wait Until Page Contains Element          ${watch_name_textin_mywatch_tab}     20
   Wait Until Page Contains Element        ${BT_status_text}       20
   #Element Should Contain Text      ${watch_name_text}      Cosmos Pro
   Element Should Be Visible          ${Cosmos_watchface}
   Element Should Be Visible          ${BT_status_text}
   Element Should Be Visible          ${Battery_status_text}
   Element Should Be Visible         ${Sync_status_text}
   Element Should Be Visible         ${BT_call_status_text}
   Element Should Be Visible         ${Watch_Settings_option}
   Element Should Be Visible         ${watch_face_option}
   Wait Until Page Contains Element          ${watch_face_option}     20
   Click Element         ${watch_face_option}
   Wait Until Page Contains Element         ${Cloud_watch_option}     20
   Wait Until Page Contains Element          ${Default_watch_option}    20
   Wait Until Page Contains Element        ${Back_arrow}       20
   Click Element                 ${Back_arrow}
   Wait Until Page Contains Element          ${Watch_Settings_option1}          20
   Click Element           ${Watch_Settings_option1}
   Wait Until Page Contains Element         ${Watch_Settings_option1}        20
   Click Element         ${MyWatch_Icon}
   Sleep          8
   Scroll           ${Watch_Settings_option1}             ${BT_status_text}
   Wait Until Page Contains Element         ${find_my_watch_text}        20
   Click Element                            ${find_my_watch_text}
   Wait Until Page Contains Element         ${find_my_watch_text1}        20
   Wait Until Page Contains Element         ${Back_arrow}      20
   Click Element                            ${Back_arrow}
   Wait Until Page Contains Element         ${BT_calling_text_option}        20
   Click Element                            ${BT_calling_text_option}
   Wait Until Page Contains Element         ${Calling_text}        20
   Wait Until Page Contains Element         ${Back_arrow}     20
   Click Element                            ${Back_arrow}
   Sleep        8
   Scroll              ${BT_calling_text_option}            ${watch_face_option}
   Wait Until Page Contains Element        ${Activity700_text}      20
   Wait Until Page Contains Element         ${CosmosProwatch_feature}        20



    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep     10
    Wait Until Page Contains Element         ${Profile_pic}      20
    Click Element       ${Profile_pic}
    Sleep    20
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
    Sleep    10
    Wait Until Page Contains Element       ${BT_Calltext}        20
    Click Element        ${BT_Calltext}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element     ${Open_watch_face_Card}    20
    Click Element      ${Open_watch_face_Card}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
#    Wait Until Page Contains Element     ${Manage Watch Settings}     20
#    Click Element      ${Manage Watch Settings}
#    Wait Until Page Contains Element    ${Home_Icon}    20
#    Click Element    ${Home_Icon}

    Sleep    5
    Scroll      ${Steps_count}               ${Blueetooth_Text}
    Sleep       5
#    Wait Until Page Contains Element         ${Steps_count}        20
#    Click Element       ${Steps_count}
#    Wait Until Page Contains Element       ${Home_Icon}      10
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Steps_count}               ${Blueetooth_Text}
#    Sleep    5
    Wait Until Page Contains Element               ${Sleep_Card}        20
    Click Element                ${Sleep_Card}

    Click Element      ${Home_Icon}
    Sleep    5
    Scroll     ${Steps_count}               ${Blueetooth_Text}
    Sleep    5
    Wait Until Page Contains Element               ${Distance_Card}        20
    Click Element       ${Distance_Card}

    Click Element      ${Home_Icon}
    Sleep    5
    Scroll      ${Steps_count}               ${Blueetooth_Text}
    Sleep    5
    Wait Until Page Contains Element               ${Calrories_Card}       20
    Click Element      ${Calrories_Card}

    Click Element      ${Home_Icon}
    Sleep    5
    Scroll      ${Steps_count}               ${Blueetooth_Text}
    Sleep    5
    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}


    #Dashboard page
#    Wait Until Page Contains Element         ${Profile_pic}      20
#    Click Element       ${Profile_pic}
#    Wait Until Page Contains Element    ${Back_arrow}        20
#    Click Element      ${Back_arrow}
#    Wait Until Page Contains Element       ${BT_Calltext}        20
#    Click Element        ${BT_Calltext}
#    Wait Until Page Contains Element    ${Back_arrow}        20
#    Click Element      ${Back_arrow}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep       5
#    Wait Until Page Contains Element        ${Steps_count}        20
#    Click Element       ${Steps_count}
#    Wait Until Page Contains Element       ${Home_Icon}      10
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Wait Until Page Contains Element               ${Sleep_Card}        20
#    Click Element                ${Sleep_Card}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Wait Until Page Contains Element               ${Distance_Card}        20
#    Click Element       ${Distance_Card}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Wait Until Page Contains Element               ${Calrories_Card}       20
#    Click Element      ${Calrories_Card}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Goal_details}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Goal_details}
#
#    Wait Until Page Contains Element           ${Heart_rate_Vitals_Card}      20
#    Click Element           ${Heart_rate_Vitals_Card}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Goal_details}
#
#    Wait Until Page Contains Element           ${Spo2_vitals_card}      20
#    Click Element        ${Spo2_vitals_card}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Goal_details}
#
#    Wait Until Page Contains Element        ${Stress_Level_Vital_Card}         20
#    Click Element           ${Stress_Level_Vital_Card}
#
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll      ${Goal_details}           ${Fitness_overview_headder}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Goal_details}
#    Sleep      5
#    Scroll          ${Spo2_vitals_card}              ${View_Fitness_Dashboard}
#
#    Wait Until Page Contains Element          ${Track_more_vitals}       20
#    Click Element       ${Track_more_vitals}
#    Wait Until Page Contains Element      ${Back_arrow}      20
#    Click Element       ${Back_arrow}
#
#    Wait Until Page Contains Element           ${Boat_Exclusive_headder}     20
#    Scroll        ${Boat_Exclusive_headder}          ${Spo2_vitals_card}
#    Wait Until Page Contains Element          ${700_Activity_Card}      20
#    Scroll            ${My_Buddies_headder}        ${Boat_Exclusive_headder}
#    Wait Until Page Contains Element        ${Do_more_headder}        20
#    Scroll         ${Wellness_Crew_Card}            ${My_Buddies_headder}
#    Wait Until Page Contains Element             ${Wellness_Crew_Card}     20
#    Click Element         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Back_arrow}         20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element   ${Sport_Score_card}       20
#    Click Element        ${Sport_Score_card}
#    Wait Until Page Contains Element     ${Back_arrow}    20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element        ${Build_fitness_plan_card}     20
#    Click Element       ${Build_fitness_plan_card}
#    Wait Until Page Contains Element       ${Back_arrow}    20
#    Click Element       ${Back_arrow}
#    Sleep    5
#    Scroll      ${Build_fitness_plan_card}         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Cult_fit_headder}     20
#    Click Element         ${Cult_fit_headder}
#    Wait Until Page Contains Element      ${Back_arrow}       20
#    Click Element         ${Back_arrow}


   Close Application














