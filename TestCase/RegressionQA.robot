*** Settings ***
Library     AppiumLibrary

*** Variables ***
#Login and Pair device variable
#${QA_Credenatials}         http://localhost:4723/wd/hub    platformName=Android   deviceName=R9ZRB03L25X    appPackage=com.coveiot.android.boat.qa       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
${Skip_button}             com.coveiot.android.boat.qa:id/textViewSkip
${Enter_Phone_Number}      com.coveiot.android.boat.qa:id/mobileNoEditText
${Terms_Checkbox}          com.coveiot.android.boat.qa:id/rbtn_terms
${Submit_button}           com.coveiot.android.boat.qa:id/btn_submit
${OTP_Submitt_button}      com.coveiot.android.boat.qa:id/btn_submit
${Permission_submitt_button}       com.coveiot.android.boat.qa:id/btn_submit
${System_Persmission1}        com.coveiot.android.boat.qa:id/btn_grant_permission
${System_Persmission2}        com.android.permissioncontroller:id/permission_allow_foreground_only_button
${System_Persmission3}        com.android.permissioncontroller:id/permission_allow_button
${System_Persmission4}        com.android.permissioncontroller:id/permission_allow_button
${Search_bar}                 com.coveiot.android.boat.qa:id/etSearchDevice
${Tap_on_Device}             //android.widget.TextView[@text="Cosmos Pro"]
${Search_Submit_button}       com.coveiot.android.boat.qa:id/btnConfirm
${Search_watch_ID}             //android.widget.TextView[@text="COSMOSPRO_3009"]
${Blueetooth_pair_OK}          android:id/button1
${Get_Started_button}          com.coveiot.android.boat.qa:id/btnGetStarted
${Contiue_HomePage_button}     com.coveiot.android.boat.qa:id/btnContinueToHomepage

#Landing page varialble
${Home_Icon}            //android.widget.TextView[@text="Home"]
${Fitness_Icon}         //android.widget.TextView[@text="Fitness"]
${MyWatch_Icon}         //android.widget.TextView[@text="My Watch"]
${FitCrew_Icon}         //android.widget.TextView[@text="Fit Crew"]
${Settings_Icon}        //android.widget.TextView[@text="Settings"]
${Boat_Logo}             com.coveiot.android.boat.qa:id/imgVLogo
${Blueetooth_Text}       //android.widget.TextView[@text="Bluetooth"]
${Connect_Text}           //android.widget.TextView[@text="Connected"]
${BT_Calltext}           //android.widget.TextView[@text="BT calling"]
${Watch_Image}           com.coveiot.android.boat.qa:id/ivWatch
${Battery_Icon}          com.coveiot.android.boat.qa:id/ivBattery
${Setup_your_Watch_text}     com.coveiot.android.boat.qa:id/tvSetupYourWatchHeader



*** Test Cases ***
Login_and_Pair_Device
    Open Application           http://localhost:4723/wd/hub    platformName=Android   deviceName=R9ZRB03L25X    appPackage=com.coveiot.android.boat.qa       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
    Sleep    20
    Click Element      ${Skip_button}
    Wait Until Page Contains Element     ${Enter_Phone_Number}       20
    Input Text       ${Enter_Phone_Number}       8050904029
    Wait Until Page Contains Element       ${Terms_Checkbox}         10
    Click Element        ${Terms_Checkbox}
    Wait Until Page Contains Element     ${Submit_button}     10
    Click Element        ${Submit_button}
    Sleep    5
    Input Text        //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[1]        9
    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[2]         0
    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[3]         2
    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[4]         9

    Hide Keyboard
    Wait Until Page Contains Element    ${OTP_Submitt_button}          10
    Click Element        ${OTP_Submitt_button}
    Wait Until Page Contains Element   ${Permission_submitt_button}       10
    Click Element    ${Permission_submitt_button}
    Wait Until Page Contains Element   ${System_Persmission1}      10
    Click Element    ${System_Persmission1}
    Wait Until Page Contains Element    ${System_Persmission2}        10
    Click Element    ${System_Persmission2}
    Wait Until Page Contains Element    	${System_Persmission3}         10
    Click Element      	 ${System_Persmission3}
    Wait Until Page Contains Element   ${System_Persmission4}           10
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

#    Scroll      ${Setup_your_Watch_text}               ${Blueetooth_Text}
#    Sleep       10
#    Scroll      com.coveiot.android.boat.qa:id/tvGoalDetail           com.coveiot.android.boat.qa:id/tvFitnessOverviewHeader
#    Wait Until Page Contains Element               //android.widget.TextView[@text="Sleep"]     20
#    Wait Until Page Contains Element               //android.widget.TextView[@text="Distance"]     20
#    Wait Until Page Contains Element               //android.widget.TextView[@text="Calories"]     20
#    Wait Until Page Contains Element               //android.widget.TextView[@text="View fitness dashboard"]     20
#    Wait Until Page Contains Element              com.coveiot.android.boat.qa:id/tvFitnessVitals        20
#    Scroll      com.coveiot.android.boat.qa:id/tvFitnessVitals             com.coveiot.android.boat.qa:id/tvGoalDetail
#    Wait Until Page Contains Element           //android.widget.TextView[@text="Heart Rate"]     20
#    Wait Until Page Contains Element           //android.widget.TextView[@text="SpO2"]     20
#    Wait Until Page Contains Element           //android.widget.TextView[@text="Stress Level"]     20
#
#    Scroll          //android.widget.TextView[@text="SpO2"]               //android.widget.TextView[@text="View fitness dashboard"]
#    Wait Until Page Contains Element           //android.widget.TextView[@text="Track more vitals"]     20
#    Wait Until Page Contains Element           //android.widget.TextView[@text="boAt exclusive"]     20
#    Scroll        //android.widget.TextView[@text="boAt exclusive"]          //android.widget.TextView[@text="SpO2"]
#    Wait Until Page Contains Element          //android.widget.TextView[@text="700+ Activities"]      20
#    Scroll        //android.widget.TextView[@text="My buddies"]            //android.widget.TextView[@text="boAt exclusive"]
#    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/tvDoMoreWithYourWatch       20
#    Scroll         //android.widget.TextView[@text="Wellness crew setup"]            //android.widget.TextView[@text="My buddies"]
#



Watch_Setings_page
    Wait Until Page Contains Element         //android.widget.TextView[@text="Settings"]        20
    Click Element         //android.widget.TextView[@text="Settings"]

    ##Watch Settings
    Wait Until Page Contains Element         //android.widget.TextView[@text="System settings"]       10
    Click Element                    //android.widget.TextView[@text="System settings"]
    Wait Until Page Contains Element         //android.widget.TextView[@text="Watch settings"]     10
    Click Element                        //android.widget.TextView[@text="Watch settings"]
    Element Should Be Visible     //android.widget.TextView[@text="Connected"]
    Wait Until Page Contains Element         //android.widget.TextView[@text="Watch features"]       10
    Click Element                       //android.widget.TextView[@text="Watch features"]
    Sleep      8
    #Element Should Be Visible     //android.widget.TextView[@text="Watchfaces"]
    Element Should Be Visible      //android.widget.TextView[@text="Auto activity detection"]
    Element Should Be Visible     //android.widget.TextView[@text="Auto monitoring heart rate"]
    Element Should Be Visible     //android.widget.TextView[@text="Auto stress & HRV monitoring"]
    Element Should Be Visible     //android.widget.TextView[@text="Nightly breathing rate"]
    Element Should Be Visible     //android.widget.TextView[@text="Female wellness tracker"]
    Element Should Be Visible     //android.widget.TextView[@text="Alarms"]
    Element Should Be Visible     //android.widget.TextView[@text="Sedentary reminder"]
    Scroll          //android.widget.TextView[@text="Sedentary reminder"]            //android.widget.TextView[@text="Auto monitoring heart rate"]
    Element Should Be Visible     //android.widget.TextView[@text="Nudges"]
    Element Should Be Visible     //android.widget.TextView[@text="Bluetooth calling"]
    Element Should Be Visible     //android.widget.TextView[@text="Find my watch"]
    Element Should Be Visible     //android.widget.TextView[@text="Weather settings"]
    Element Should Be Visible     //android.widget.TextView[@text="Notifications"]
    Scroll        //android.widget.TextView[@text="Female wellness tracker"]            //android.widget.TextView[@text="Nudges"]

   #AAD
    Wait Until Page Contains Element       //android.widget.TextView[@text="Auto activity detection"]        20
    Click Element                          //android.widget.TextView[@text="Auto activity detection"]

    Wait Until Page Contains Element      com.coveiot.android.boat.qa:id/btn_ok            20
    Click Element                         com.coveiot.android.boat.qa:id/btn_ok
    Sleep      10

    Wait Until Page Contains Element          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.Switch         20
    Click Element                            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.Switch

    Wait Until Page Contains Element      com.coveiot.android.boat.qa:id/btn_ok            20
    Click Element                         com.coveiot.android.boat.qa:id/btn_ok

    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/positive_btn      20
    Click Element                          com.coveiot.android.boat.qa:id/positive_btn


    ##Auto HR
    Wait Until Page Contains Element          //android.widget.TextView[@text="Auto monitoring heart rate"]      20
    Click Element                          //android.widget.TextView[@text="Auto monitoring heart rate"]
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/switch_auto_hr       20
    Click Element                          com.coveiot.android.boat.qa:id/switch_auto_hr
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/btnSave        20
    Click Element                             com.coveiot.android.boat.qa:id/btnSave
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn         20
    Click Element                            com.coveiot.android.boat.qa:id/positive_btn

    #Element Should Be Visible      com.coveiot.android.boat.qa:id/mins_10_radiobutton

    #Auto Stress
    Wait Until Page Contains Element         //android.widget.TextView[@text="Auto stress & HRV monitoring"]    20
    Click Element         //android.widget.TextView[@text="Auto stress & HRV monitoring"]
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/switch_reminder             20
    Click Element         com.coveiot.android.boat.qa:id/switch_reminder
    #Element Should Be Visible     //android.widget.RadioButton[@text="60 Min"]

    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/btnSave         20
    Click Element          com.coveiot.android.boat.qa:id/btnSave

    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn          20
    Click Element                com.coveiot.android.boat.qa:id/positive_btn



    #NBR

    Wait Until Page Contains Element         //android.widget.TextView[@text="Nightly breathing rate"]       20
    Click Element          //android.widget.TextView[@text="Nightly breathing rate"]

    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/switch_respiratory_rate          20
    Click Element               com.coveiot.android.boat.qa:id/switch_respiratory_rate

    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/btnSave                  20
    Click Element          com.coveiot.android.boat.qa:id/btnSave

    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn              20
    Click Element                com.coveiot.android.boat.qa:id/positive_btn

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
    Wait Until Page Contains Element           //android.widget.TextView[@text="Sedentary reminder"]     20
    Click Element       //android.widget.TextView[@text="Sedentary reminder"]

    Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/switch_reminder       20
    Click Element                com.coveiot.android.boat.qa:id/switch_reminder

    Wait Until Page Contains Element     com.coveiot.android.boat.qa:id/btnSave            20
    Click Element                       com.coveiot.android.boat.qa:id/btnSave
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn        20
    Click Element             com.coveiot.android.boat.qa:id/positive_btn
    Sleep       8

    #Nudges
    Scroll           //android.widget.TextView[@text="Nudges"]            //android.widget.TextView[@text="Auto monitoring heart rate"]
    Wait Until Page Contains Element              //android.widget.TextView[@text="Nudges"]       20
    Click Element           //android.widget.TextView[@text="Nudges"]

    Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/switch_nudges         20
    Click Element                    com.coveiot.android.boat.qa:id/switch_nudges

#    Wait Until Page Contains Element            com.coveiot.android.boat.qa:id/switch_vibrations      20
#    Click Element                 com.coveiot.android.boat.qa:id/switch_vibrations

    Wait Until Page Contains Element     com.coveiot.android.boat.qa:id/btnSave         20
    Click Element                       com.coveiot.android.boat.qa:id/btnSave

    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn          20
    Click Element             com.coveiot.android.boat.qa:id/positive_btn

    #Bleetooth Calling
    Wait Until Page Contains Element            //android.widget.TextView[@text="Bluetooth calling"]         20
    Click Element           //android.widget.TextView[@text="Bluetooth calling"]

#    Element Should Be Visible        //android.widget.TextView[@text="Connected to Cosmos Pro"]
#    Element Should Be Visible        //android.widget.TextView[@text="Your Synced Contacts"]
    Wait Until Page Contains Element             com.coveiot.android.boat.qa:id/toolbar_back_arrow       10
    Click Element                        com.coveiot.android.boat.qa:id/toolbar_back_arrow

    #Find My watch
    Wait Until Page Contains Element              //android.widget.TextView[@text="Find my watch"]        20
    Click Element          //android.widget.TextView[@text="Find my watch"]
    Wait Until Page Contains Element               com.coveiot.android.boat.qa:id/btn_ok    20
    Click Element        com.coveiot.android.boat.qa:id/btn_ok
    Element Should Be Visible         com.coveiot.android.boat.qa:id/tv_searching_for_watch
    Wait Until Page Contains Element               com.coveiot.android.boat.qa:id/btn_ok     20
    Click Element        com.coveiot.android.boat.qa:id/btn_ok
    Wait Until Page Contains Element            com.coveiot.android.boat.qa:id/toolbar_back_arrow   10
    Click Element      com.coveiot.android.boat.qa:id/toolbar_back_arrow

    #weather
    Wait Until Page Contains Element      //android.widget.TextView[@text="Weather settings"]    10
    Click Element        //android.widget.TextView[@text="Weather settings"]
    Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/switch_weather    10
    Click Element     com.coveiot.android.boat.qa:id/switch_weather
    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/btn_ok    10
    Click Element       com.coveiot.android.boat.qa:id/btn_ok
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn     10
    Click Element       com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn     10
    Click Element       com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element          //android.widget.TextView[@text="Permissions"]    10
    Click Element        //android.widget.TextView[@text="Permissions"]
    Wait Until Page Contains Element          //android.widget.TextView[@text="Location"]    10
    Click Element        //android.widget.TextView[@text="Location"]
    Wait Until Page Contains Element        com.android.permissioncontroller:id/allow_always_radio_button     10
    Click Element        com.android.permissioncontroller:id/allow_always_radio_button
    Wait Until Page Contains Element       //android.widget.ImageButton[@content-desc="Back"]    10
    Click Element       //android.widget.ImageButton[@content-desc="Back"]
    Wait Until Page Contains Element       //android.widget.ImageButton[@content-desc="Back"]    10
    Click Element       //android.widget.ImageButton[@content-desc="Back"]
    Wait Until Page Contains Element       //android.widget.ImageButton[@content-desc="Navigate up"]    10
    Click Element         //android.widget.ImageButton[@content-desc="Navigate up"]
    Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/switch_weather    10
    Click Element     com.coveiot.android.boat.qa:id/switch_weather
    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/btn_ok    10
    Click Element       com.coveiot.android.boat.qa:id/btn_ok
    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/positive_btn    10
    Click Element        com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/toolbar_back_arrow   10
    Click Element        com.coveiot.android.boat.qa:id/toolbar_back_arrow

    #Notification

    Wait Until Page Contains Element          //android.widget.TextView[@text="Notifications"]     10
    Click Element         //android.widget.TextView[@text="Notifications"]
    Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/call_notification_value    20
    Click Element        com.coveiot.android.boat.qa:id/call_notification_value
    Wait Until Page Contains Element       com.android.permissioncontroller:id/permission_allow_button       20
    Click Element      com.android.permissioncontroller:id/permission_allow_button
    Wait Until Page Contains Element       com.android.permissioncontroller:id/permission_allow_button   20
    Click Element         com.android.permissioncontroller:id/permission_allow_button
    Wait Until Page Contains Element       com.android.permissioncontroller:id/permission_allow_button   20
    Click Element         com.android.permissioncontroller:id/permission_allow_button
    Wait Until Page Contains Element        //android.widget.TextView[@text="boAt Crest"]         10
    Click Element         //android.widget.TextView[@text="boAt Crest"]
    Wait Until Page Contains Element       android:id/button1       20
    Click Element              android:id/button1
    Wait Until Page Contains Element       //android.widget.ImageButton[@content-desc="Navigate up"]       20
    Click Element            //android.widget.ImageButton[@content-desc="Navigate up"]

    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/sms_notification_value    20
    Click Element          com.coveiot.android.boat.qa:id/sms_notification_value
    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/btn_ok         20
    Click Element            com.coveiot.android.boat.qa:id/btn_ok
    Wait Until Page Contains Element      com.coveiot.android.boat.qa:id/positive_btn    20
    Click Element          com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/toolbar_back_arrow     20
    Click Element        com.coveiot.android.boat.qa:id/toolbar_back_arrow

#watch Control
    Wait Until Page Contains Element           //android.widget.TextView[@text="Watch control"]        20
    Click Element        //android.widget.TextView[@text="Watch control"]
    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/cl_donot_disturb      20
    Click Element           com.coveiot.android.boat.qa:id/cl_donot_disturb
    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/dnd_switch     20
    Click Element              com.coveiot.android.boat.qa:id/dnd_switch
    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/btn_ok    20
    Click Element            com.coveiot.android.boat.qa:id/btn_ok
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/positive_btn     20
    Click Element                             com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/cl_quick_reply       20
    Click Element                  com.coveiot.android.boat.qa:id/cl_quick_reply
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/quick_reply_switch    20
    Click Element              com.coveiot.android.boat.qa:id/quick_reply_switch
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDone    20
    Click Element            com.coveiot.android.boat.qa:id/tvDone
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/positive_btn      20
    Click Element              com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element          //android.widget.TextView[@text="Permissions"]    20
    Click Element        //android.widget.TextView[@text="Permissions"]
    Wait Until Page Contains Element        //android.widget.TextView[@text="Call logs"]           20
    Scroll         //android.widget.TextView[@text="Notifications"]            //android.widget.TextView[@text="Call logs"]
    Wait Until Page Contains Element        //android.widget.TextView[@text="SMS"]        20
    Click Element        //android.widget.TextView[@text="SMS"]
    Wait Until Page Contains Element             com.android.permissioncontroller:id/allow_radio_button        20
    Click Element          com.android.permissioncontroller:id/allow_radio_button
    Wait Until Page Contains Element        //android.widget.ImageButton[@content-desc="Back"]       20
    Click Element          //android.widget.ImageButton[@content-desc="Back"]
    Wait Until Page Contains Element          //android.widget.ImageButton[@content-desc="Back"]        20
    Click Element              //android.widget.ImageButton[@content-desc="Back"]
    Wait Until Page Contains Element           //android.widget.ImageButton[@content-desc="Navigate up"]       20
    Click Element                //android.widget.ImageButton[@content-desc="Navigate up"]
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/quick_reply_switch       20
    Click Element             com.coveiot.android.boat.qa:id/quick_reply_switch
    Wait Until Page Contains Element        //android.widget.TextView[@text="Manage quick reply"]          20
    Click Element           //android.widget.TextView[@text="Manage quick reply"]
    Wait Until Page Contains Element             //android.widget.TextView[@text="I am busy. I will call you later."]      20
    Element Should Be Visible          //android.widget.TextView[@text="I am driving. I will call you later."]
    Element Should Be Visible          //android.widget.TextView[@text="Unable to talk now."]
    Element Should Be Visible          //android.widget.TextView[@text="At work. I will call you later."]
    Element Should Be Visible          //android.widget.TextView[@text="I am sleeping. I will call you later."]
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow       20
    Click Element               com.coveiot.android.boat.qa:id/toolbar_back_arrow
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow       20
    Click Element               com.coveiot.android.boat.qa:id/toolbar_back_arrow
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/lift_wrist_switch      20
    Click Element            com.coveiot.android.boat.qa:id/lift_wrist_switch
    Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/positive_btn      20
    Click Element           com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/selected_distance_unit_text       20
    Click Element           com.coveiot.android.boat.qa:id/selected_distance_unit_text
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ok_popup       20
    Click Element           com.coveiot.android.boat.qa:id/ok_popup
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/positive_btn     20
    Click Element          com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/selected_hour_text     20
    Click Element            com.coveiot.android.boat.qa:id/selected_hour_text
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ok_popup       20
    Click Element           com.coveiot.android.boat.qa:id/ok_popup
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/positive_btn     20
    Click Element          com.coveiot.android.boat.qa:id/positive_btn
    Wait Until Page Contains Element       com.coveiot.android.boat.qa:id/toolbar_back_arrow      20
    Click Element      com.coveiot.android.boat.qa:id/toolbar_back_arrow
    Wait Until Page Contains Element          //android.widget.TextView[@text="About watch"]       20
    Click Element          //android.widget.TextView[@text="About watch"]
    Wait Until Page Contains Element           //android.widget.TextView[@text="Cosmos Pro"]       20
    Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow      20
    Click Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow

Fitness_Tab
   Wait Until Page Contains Element             ${Fitness_Icon}       20
   Click Element     ${Fitness_Icon}
   Wait Until Page Contains Element         //android.widget.TextView[@text="Vital details"]      20
   Click Element          //android.widget.TextView[@text="Vital details"]
   Wait Until Page Contains Element           //android.widget.TextView[@text="Steps"]        20
   Click Element        //android.widget.TextView[@text="Steps"]


   ##Steps
   #Days
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDay       20
   Click Element         com.coveiot.android.boat.qa:id/tvDay
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Week
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvWeek        20
   Click Element                            com.coveiot.android.boat.qa:id/tvWeek
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Month
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvMonth        20
   Click Element                            com.coveiot.android.boat.qa:id/tvMonth
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image

##Sleep
   Wait Until Page Contains Element           //android.widget.TextView[@text="Sleep"]        10
   Click Element        //android.widget.TextView[@text="Sleep"]
   #Day
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDay       20
   Click Element         com.coveiot.android.boat.qa:id/tvDay
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Week
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvWeek        20
   Click Element                            com.coveiot.android.boat.qa:id/tvWeek
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Month
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvMonth        20
   Click Element                            com.coveiot.android.boat.qa:id/tvMonth
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image


##Heart Rate
   Wait Until Page Contains Element           //android.widget.TextView[@text="Heart Rate"]        10
   Click Element        //android.widget.TextView[@text="Heart Rate"]
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDay       20
   Click Element         com.coveiot.android.boat.qa:id/tvDay
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Week
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvWeek        20
   Click Element                            com.coveiot.android.boat.qa:id/tvWeek
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Month
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvMonth        20
   Click Element                            com.coveiot.android.boat.qa:id/tvMonth
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image


##SPO2
   Wait Until Page Contains Element           //android.widget.TextView[@text="SpO2"]        10
   Click Element        //android.widget.TextView[@text="SpO2"]

   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image

   Sleep        10
   Scroll       //android.widget.TextView[@text="SpO2"]              //android.widget.TextView[@text="Steps"]

##Stress_Level
   Wait Until Page Contains Element      //android.widget.TextView[@text="Stress Level"]      20
   Click Element         //android.widget.TextView[@text="Stress Level"]

   #Days
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDay       20
   Click Element         com.coveiot.android.boat.qa:id/tvDay
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Week
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvWeek        20
   Click Element                            com.coveiot.android.boat.qa:id/tvWeek
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Month
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvMonth        20
   Click Element                            com.coveiot.android.boat.qa:id/tvMonth
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image

##HRV
   Wait Until Page Contains Element      //android.widget.TextView[@text="HRV"]      20
   Click Element         //android.widget.TextView[@text="HRV"]
   #Days
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDay       20
   Click Element         com.coveiot.android.boat.qa:id/tvDay
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Week
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvWeek        20
   Click Element                            com.coveiot.android.boat.qa:id/tvWeek
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Month
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvMonth        20
   Click Element                            com.coveiot.android.boat.qa:id/tvMonth
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image

##NBR
   Wait Until Page Contains Element          //android.widget.TextView[@text="Nightly breathing rate"]          20
   Click Element         //android.widget.TextView[@text="Nightly breathing rate"]

   #Days
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvDay       20
   Click Element         com.coveiot.android.boat.qa:id/tvDay
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Week
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvWeek        20
   Click Element                            com.coveiot.android.boat.qa:id/tvWeek
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image
   #Month
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/tvMonth        20
   Click Element                            com.coveiot.android.boat.qa:id/tvMonth
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element                            com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image

##Energy_Meter
   Wait Until Page Contains Element          //android.widget.TextView[@text="Energy Meter"]          20
   Click Element         //android.widget.TextView[@text="Energy Meter"]

   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/ibShareVitals   20
   Click Element        com.coveiot.android.boat.qa:id/ibShareVitals
   Sleep      8
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_app_logo       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/iv_powered_cove        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/disclaimer_info       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_button         20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/share_close_image     20
   Click Element                            com.coveiot.android.boat.qa:id/share_close_image


MyWatch_Tab
   Wait Until Page Contains Element      ${MyWatch_Icon}     20
   Click Element             ${MyWatch_Icon}
   Wait Until Page Contains Element           //android.widget.TextView[@text="Madi's Cosmos Pro"]      20
   Element Should Contain Text     com.coveiot.android.boat.qa:id/topHeaderTv        Cosmos Pro
   Element Should Be Visible          com.coveiot.android.boat.qa:id/wfCosmosPro
   Element Should Be Visible          com.coveiot.android.boat.qa:id/btStatusTv
   Element Should Be Visible          com.coveiot.android.boat.qa:id/batteryStatusTv
   Element Should Be Visible         com.coveiot.android.boat.qa:id/syncStatusTv
   Element Should Be Visible         com.coveiot.android.boat.qa:id/btCallStatusTv
   Element Should Be Visible        com.coveiot.android.boat.qa:id/watchSettingsTv
   Element Should Be Visible         com.coveiot.android.boat.qa:id/tvChangeYourWatchFace
   Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/tvChangeYourWatchFace     20
   Click Element          com.coveiot.android.boat.qa:id/tvChangeYourWatchFace
   Wait Until Page Contains Element           //android.widget.TextView[@text="Cloud"]      20
   Wait Until Page Contains Element           //android.widget.TextView[@text="Default"]      20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow       20
   Click Element                  com.coveiot.android.boat.qa:id/toolbar_back_arrow
   Wait Until Page Contains Element           //android.widget.TextView[@text="Watch settings"]        20
   Click Element           //android.widget.TextView[@text="Watch settings"]
   Wait Until Page Contains Element          //android.widget.TextView[@text="Watch settings"]       20
   Click Element         ${MyWatch_Icon}
   Sleep          8
   Scroll           //android.widget.TextView[@text="Watch settings"]              com.coveiot.android.boat.qa:id/btStatusTv
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/findMyWatchTv       20
   Click Element                            com.coveiot.android.boat.qa:id/findMyWatchTv
   Wait Until Page Contains Element         //android.widget.TextView[@text="Find my watch"]       20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow       20
   Click Element                            com.coveiot.android.boat.qa:id/toolbar_back_arrow
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/bluetoothCallingTv        20
   Click Element                            com.coveiot.android.boat.qa:id/bluetoothCallingTv
   Wait Until Page Contains Element         //android.widget.TextView[@text="Bluetooth calling"]        20
   Wait Until Page Contains Element         com.coveiot.android.boat.qa:id/toolbar_back_arrow       20
   Click Element                            com.coveiot.android.boat.qa:id/toolbar_back_arrow
   Sleep        8
   Scroll              com.coveiot.android.boat.qa:id/bluetoothCallingTv       com.coveiot.android.boat.qa:id/tvChangeYourWatchFace
   Wait Until Page Contains Element         //android.widget.TextView[@text="700+ Activities"]        20
   Wait Until Page Contains Element         //android.widget.TextView[@text="Cosmos Pro features"]        20

FitCrew_Tab
   Wait Until Page Contains Element    ${FitCrew_Icon}          40
   Click Element       ${FitCrew_Icon}
   Wait Until Page Contains Element         //android.widget.TextView[@text="My Fit Crew"]        10
   Wait Until Page Contains Element         //android.widget.TextView[@text="Messages"]      20
   Click Element            //android.widget.TextView[@text="Messages"]
   Wait Until Page Contains Element        //android.widget.TextView[@text="Manage Fit Crew"]      20
   Click Element             //android.widget.TextView[@text="Manage Fit Crew"]


   Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/ivButton    20
   Click Element       com.coveiot.android.boat.qa:id/ivButton
#   Wait Until Page Contains Element       com.android.permissioncontroller:id/permission_allow_button     20
#   Click Element    com.android.permissioncontroller:id/permission_allow_button
   Wait Until Page Contains Element           com.coveiot.android.boat.qa:id/search_src_text    20
   Input Text       com.coveiot.android.boat.qa:id/search_src_text          akku
   Wait Until Page Contains Element          com.coveiot.android.boat.qa:id/buddies_icon          40
   Click Element                    com.coveiot.android.boat.qa:id/buddies_icon
   Wait Until Page Contains Element        com.coveiot.android.boat.qa:id/save        20
   Click Element           com.coveiot.android.boat.qa:id/save
   Wait Until Page Contains Element                //android.widget.TextView[@text="Invites-Sent"]        20
   Click Element                 //android.widget.TextView[@text="Invites-Sent"]
   Wait Until Page Contains Element             //android.widget.TextView[@text="Re-Invite"]        20
   Click Element              //android.widget.TextView[@text="Re-Invite"]
   Wait Until Page Contains Element             //android.widget.TextView[@text="Madi"]              20
   Wait Until Page Contains Element            com.coveiot.android.boat.qa:id/negative_button        20
   Click Element             com.coveiot.android.boat.qa:id/negative_button

   Close Application












    
