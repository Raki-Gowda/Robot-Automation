*** Settings ***
Library     AppiumLibrary
Resource     ../Resource/locators.robot

*** Keywords ***

Lounch_Prod_App
    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2
    Wait Until Page Contains Element     ${Skip_button}     30
Launch_Prod_App_from_pair
    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2    noReset=true    fullReset=false
    ${ele}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${System_Persmission1}    10
    IF    '${ele}'=='True'
          Click Element    ${System_Persmission1}
    END
BT_Pair_Pop_UP
   ${IsElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Blueetooth_pair_OK}            10
   IF  '${IsElementVisible}' == 'True'
      Click Element       ${Blueetooth_pair_OK}
   END



OTP_Enter_Fields
    Input Text        //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[1]        9
    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[2]         4
    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[3]         5
    Input Text       //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[4]         1


Weekly_Report_Subscription
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element      ${Weekly_Report_Popup}          30
    IF   '${ElementVisible}' == 'True'
       Click Element          ${Weekly_Report_Close}
    END

Dashboard_Skip_Notification_Settings_Feature
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Dashboard_Skip_Notification_Settings}          30
    IF   '${ElementVisible}' == 'True'
       Click Element         ${Dashboard_Skip_Notification_Settings}
    END

Back_Arror_Feature
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Back_arrow}          10
    IF   '${ElementVisible}' == 'True'
       Click Element           ${Back_arrow}
    END


Login_and_Verify_OTP
    Click Element      ${Skip_button}
    Wait Until Page Contains Element       ${Phone_Number_Auto_Fill}      40
    Click Element       ${Phone_Number_Auto_Fill}
    Wait Until Page Contains Element     ${Submit_button}         40
    Click Element        ${Submit_button}
    Wait Until Element Is Visible    ${OTP_Auto_Fill_Allow}    30
    Click Element          ${OTP_Auto_Fill_Allow}
    sleep  2
    Wait Until Page Contains Element   ${Permission_submitt_button}       80
    Click Element    ${Permission_submitt_button}
    Wait Until Page Contains Element   ${System_Persmission1}      40
    Click Element    ${System_Persmission1}
    Wait Until Page Contains Element    ${System_Persmission2}        20
    Click Element    ${System_Persmission2}
    Wait Until Page Contains Element    	${System_Persmission3}         20
    Click Element      	 ${System_Persmission3}
    Wait Until Page Contains Element    	${System_Persmission4}         20
    Click Element      	 ${System_Persmission4}



Goto_Settings_Page
    Wait Until Page Contains Element         ${Settings_Icon}        20
    Click Element                             ${Settings_Icon}

    ##Watch Settings
    Wait Until Page Contains Element         ${System_settings_text}       10
    Click Element                            ${System_settings_text}
    Wait Until Page Contains Element         ${Watch_settings_text}    10
    Click Element                            ${Watch_settings_text}
#    Element Should Be Visible                ${Connected_text}
    Wait Until Page Contains Element         ${Watch_feature_text}       10
    Click Element                            ${Watch_feature_text}

HR_Enable_Battery_Alert
   ${IsPopUpShowing}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Ok_button}            10
   Run Keyword If    '${IsPopUpShowing}' == 'True'     Click Element       ${Ok_button}

Verify_Alarm_Feature
    Wait Until Page Contains Element        ${Alarm_feature}        20
    Click Element                   ${Alarm_feature}

    Wait Until Page Contains Element          ${Add_Alarm_Button}     20
    Click Element                  ${Add_Alarm_Button}
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Max_Alarm_Toast}           10
    IF   '${ElementVisible}' == 'True'
       Wait Until Page Contains Element       ${Back_arrow}      10
       Click Element        ${Back_arrow}
    ELSE
       Wait Until Page Contains Element      ${Alarm_Time_OK}        20
       Click Element              ${Alarm_Time_OK}
       Wait Until Page Contains Element         ${Save_Alarm_Button}       20
       Click Element       ${Save_Alarm_Button}
       Wait Until Page Contains Element         ${Ok_button}        20
       Click Element           ${Ok_button}
       Wait Until Page Contains Element      ${Back_arrow}       20
       Click Element       ${Back_arrow}
    END

Verify_Alarm_Feature_CY
    Wait Until Page Contains Element        ${Alarm_feature}        20
    Click Element                   ${Alarm_feature}

    Wait Until Page Contains Element          ${Add_Alarm_Button}     20
    Click Element                  ${Add_Alarm_Button}
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Max_Alarm_Toast}           10
    IF   '${ElementVisible}' == 'True'
       Wait Until Page Contains Element       ${Back_arrow}      10
       Click Element        ${Back_arrow}
    ELSE
       Wait Until Page Contains Element      ${Alarm_Time_OK}        20
       Click Element              ${Alarm_Time_OK}
       Wait Until Page Contains Element         ${Save_Alarm_Button}       20
       Click Element       ${Save_Alarm_Button}
       Wait Until Page Contains Element         ${Ok_button}        20
       Click Element           ${Ok_button}
       Wait Until Page Contains Element      ${Back_arrow}       20
       Click Element       ${Back_arrow}
    END
    Sleep    3
    Scroll    ${Alarm_feature}    ${Auto_activity_feature}

Verify_Alarm_Feature_ULC5BT
    Wait Until Page Contains Element        ${Alarm_feature}        20
    Click Element                   ${Alarm_feature}

    Wait Until Page Contains Element          ${Add_Alarm_Button}     20
    Click Element                  ${Add_Alarm_Button}
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Max_Alarm_Toast}           10
    IF   '${ElementVisible}' == 'True'
       Wait Until Page Contains Element       ${Back_arrow}      10
       Click Element        ${Back_arrow}
    ELSE
       Wait Until Page Contains Element      ${Alarm_Time_OK}        20
       Click Element              ${Alarm_Time_OK}
       Wait Until Page Contains Element         ${Save_Alarm_Button}       20
       Click Element       ${Save_Alarm_Button}
       Wait Until Page Contains Element         ${Ok_button}        20
       Click Element           ${Ok_button}
       Wait Until Page Contains Element      ${Back_arrow}       20
       Click Element       ${Back_arrow}
    END
    Sleep    2
    Scroll    ${Sedentary_reminder_feature}    ${qr_tray}



Fitness_Page_Vitals_Details
   Wait Until Page Contains Element             ${Fitness_Icon}       20
   Click Element     ${Fitness_Icon}
   Wait Until Page Contains Element        ${Vitals_Details_text}     20
   Click Element         ${Vitals_Details_text}

Fitness_Page_Fitness
  Wait Until Page Contains Element    ${Fitness_text}        20
  Click Element         ${Fitness_text}
  Wait Until Page Contains Element        ${Fitness_Steps_text}        20
  Scroll      ${Goal_Insight_headder}           ${ShareIcon_Fitness}


Fitness_Plan_Page
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Ongoing_Fitness_Status_Text}           10
    IF   '${ElementVisible}' == 'True'
       Click Element       ${Fitness_Plans_Text}
       Wait Until Page Contains Element        ${Ongoing_Fitness_Status_Text}          20
       Click Element        ${Ongoing_Fitness_Status_Text}
       Wait Until Page Contains Element         ${Week1_Title_Text}      20
       Scroll      ${Subscribe_Plan_Good_Luck_Text}         ${Fitness_Plan_Image_Text}
       Wait Until Page Contains Element       ${Unsubscribe_Fitness_Plan_Button}        20
       Click Element        ${Unsubscribe_Fitness_Plan_Button}
       Wait Until Page Contains Element       ${Unsbcirbe_Fitness_Plan_Confirmation_Button}       20
       Click Element        ${Unsbcirbe_Fitness_Plan_Confirmation_Button}
       Wait Until Page Contains Element    ${Back_arrow}      20
       Click Element      ${Back_arrow}
    END

   Wait Until Page Contains Element     ${Build_fitness_plan_card}       20
   Click Element        ${Build_fitness_plan_card}
   Sleep    5
#   ${IsPlanStartTomorrow}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Subscribed_Plan_Start_Text}             10
#    IF   '${IsPlanStartTomorrow}' == 'True'
#       Wait Until Page Contains Element         ${Subscribed_Plan_Start_Text}            20
#       Scroll      ${Fitness_Plan_Day_Text}         ${Week_Plan_Text}
#       Wait Until Page Contains Element    ${Unsubscribe_Fitness_Plan_Button}     20
#       Click Element      ${Unsubscribe_Fitness_Plan_Button}
#       Wait Until Page Contains Element     ${Unsbcirbe_Fitness_Plan_Confirmation_Button}    20
#       Click Element       ${Unsbcirbe_Fitness_Plan_Confirmation_Button}
#       Wait Until Page Contains Element     ${Build_fitness_plan_card}       20
#       Click Element        ${Build_fitness_plan_card}
#    END

   Wait Until Page Contains Element     ${Your_BMI_headder}      10
   Wait Until Page Contains Element     ${BMI_Height_Text}       10
   Wait Until Page Contains Element     ${BMI_Age_Text}          10
   Wait Until Page Contains Element     ${BMI_Weight_Text}       10
   Wait Until Page Contains Element     ${BMI_Edit_Text}         10
   Wait Until Page Contains Element     ${Proceed_To_Plan_Setup_Button}         20
   Click Element      ${Proceed_To_Plan_Setup_Button}
   Wait Until Page Contains Element       ${Fitness_Plan_Setup_headder}       20
   Wait Until Page Contains Element      ${Proceed_To_Select_Plan_Button}        20
   Click Element      ${Proceed_To_Select_Plan_Button}
   Wait Until Page Contains Element            ${Choose_Fitness_Plan_Headder}     20
   Click Element        ${Choose_Fitness_Plan_Headder}
#   Wait Until Page Contains Element       ${Get_Lean_Option}       30
#   Wait Until Page Contains Element      ${Get_Fit_Option}        20
#   Scroll     ${Get_Fit_Option}          ${Get_Lean_Option}
#   Wait Until Page Contains Element       ${Marathon_Option}       20
   Wait Until Page Contains Element       ${56KM_RUN_Plan_Option}          20
   Click Element     ${56KM_RUN_Plan_Option}
   Wait Until Page Contains Element       ${Plan_Subscribe_Button}      30
   Click Element      ${Plan_Subscribe_Button}
   Wait Until Page Contains Element        ${Subscribe_Plan_good_luck_text}     20
   Scroll      ${Week1_Text}            ${Fitness_Plan_Image_Text}
   Wait Until Page Contains Element     ${Schedule_Text}      30
   Scroll    ${Day4_Text}        ${Schedule_Text}
   Wait Until Page Contains Element         ${Unsubscribe_Plan_Button}       20
   Click Element       ${Unsubscribe_Plan_Button}
   Wait Until Page Contains Element           ${Unsubscribe_Plan_Confirmation_Button}        20
   Click Element        ${Unsubscribe_Plan_Confirmation_Button}
   Sleep    5
   Wait Until Page Contains Element       ${Fitness_Plan_Back_Button}     20
   Click Element     ${Fitness_Plan_Back_Button}
   Sleep    5
   Wait Until Page Contains Element       ${Fitness_Plan_Back_Button}     20
   Click Element     ${Fitness_Plan_Back_Button}
   Sleep   3


Verify_Steps_Vitals
   ##Steps
   Wait Until Page Contains Element          ${Steps_Option}     20
   Click Element       ${Steps_Option}
   #Days
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
   #Week
   Wait Until Page Contains Element         ${Week_text}       20
   Click Element                            ${Week_text}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element                            ${Share_Icon}
   Sleep      4
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
   Sleep      4
   Wait Until Page Contains Element         ${Cove_logo}     20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}     20
   Click Element                            ${Close_ShareCard}

Verify_Sleep_Vitals
  ##Sleep
   Wait Until Page Contains Element          ${Sleep_text}      10
   Click Element       ${Sleep_text}
   #Day
   Wait Until Page Contains Element         ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
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
   Sleep      4
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
   Sleep      4
   Wait Until Page Contains Element         ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}

Verify_HR_Vitals
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

Verify_SPO2_Vitals
   ##SPO2
   Wait Until Page Contains Element          ${SPO2_text}      20
   Click Element       ${SPO2_text}

   Wait Until Page Contains Element       ${Share_Icon}   20
   Click Element        ${Share_Icon}
   Sleep      4
   Wait Until Page Contains Element         ${Cove_logo}     20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}    20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}
   Wait Until Page Contains Element          ${SPO2_text}     20


Verify_Stress_Level_Vitals
   Wait Until Page Contains Element     ${Stress_text}     20
   Click Element         ${Stress_text}

   #Days
   Wait Until Page Contains Element        ${Days_tab}       20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
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
   Sleep      4
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


Verify_HRV_Vitals
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


Verify_NBR_Vitals
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


Verify_Energy_Meter_Vitals
   ##Energy_Meter
   Wait Until Page Contains Element          ${Energy_meter_text}          20
   Click Element        ${Energy_meter_text}

   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
   Wait Until Page Contains Element        ${Cove_logo}      20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element        ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}

Logout_Function
  Wait Until Page Contains Element    ${Settings_Icon}     20
  Click Element         ${Settings_Icon}
  Wait Until Page Contains Element       ${Watch_Status_Text}     20
  Click Element        ${Watch_Status_Text}
  Wait Until Page Contains Element      ${Watch_Disconnect_Text}    20
  Click Element          ${Watch_Disconnect_Text}
  Wait Until Page Contains Element      ${Ok_button}       20
  Click Element        ${Ok_button}

  Wait Until Element Is Visible    ${System_Persmission1}    10
