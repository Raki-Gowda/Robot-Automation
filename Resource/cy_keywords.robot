*** Settings ***
Library      AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../TestData/Deviceinfo.robot
Resource     ../Resource/keywords.robot

*** Keywords ***

CY_LunarCallPro_Pairing
    ${ele}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${System_Persmission1}    10
    IF    '${ele}'=='True'
          Click Element    ${System_Persmission1}
    END
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Lunar Call Pro
    Wait Until Page Contains Element       ${Lunar_Call_Pro_Watch_In_List}       40
    Click Element     ${Lunar_Call_Pro_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       40
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${Lunar_Call_Pro_Watch_ID}          40
    Click Element       ${Lunar_Call_Pro_Watch_ID}
    CY_LunarCallPro_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        40
    Click Element         ${Get_Started_button}
     ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   30
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

Ultima_prism_Pairing
    ${ele}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${System_Persmission1}    10
    IF    '${ele}'=='True'
          Click Element    ${System_Persmission1}
    END
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Ultima Prism
    Wait Until Page Contains Element       ${Ultima_Prism_Watch_In_List}       40
    Click Element     ${Ultima_Prism_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       40
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${Ultima_Prism_Watch_ID}          40
    Click Element       ${Ultima_Prism_Watch_ID}
    Ultima_Prism_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        40
    Click Element         ${Get_Started_button}
     ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   30
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

JL_Sigma_pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Sigma
    Wait Until Page Contains Element       ${JL_Sigma_Watch_In_List}       40
    Click Element     ${JL_Sigma_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       40
    Click Element      ${Search_Submit_button}
    Wait Until Element Is Visible    com.coveiot.android.boat:id/scanQR    10
    Click Element    com.coveiot.android.boat:id/scanQR
    Wait Until Page Contains Element     ${JL_Sigma_Watch_ID}          40
    Click Element       ${JL_Sigma_Watch_ID}
    Opp5_jeili_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        40
    Click Element         ${Get_Started_button}
    Sleep    10
     ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   20
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

CY_WavePrimiaTalk_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Primia Talk
    Wait Until Page Contains Element       ${Wave_Primia_Talk_Watch_In_List}      40
    Click Element     ${Wave_Primia_Talk_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       40
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${Wave_Primia_Talk_Watch_ID}        40
    Click Element      ${Wave_Primia_Talk_Watch_ID}
    CY_WavePrimiaTalk_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        40
    Click Element         ${Get_Started_button}
#    Wait Until Page Contains Element    ${Contiue_HomePage_button}      40
#    Click Element     ${Contiue_HomePage_button}


CY_LunarCallPro_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element      ${Lunar_Call_Pro_Watch_ID}        20
       Click Element       ${Lunar_Call_Pro_Watch_ID}
    END

Ultima_Prism_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element      ${Ultima_Prism_Watch_ID}        20
       Click Element       ${Ultima_Prism_Watch_ID}
    END

Opp5_jeili_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element      ${JL_Sigma_Watch_ID}        20
       Click Element       ${JL_Sigma_Watch_ID}
    END


CY_LunarCallPro_Search_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Search_Again_Pair}          10
    IF   '${ElementVisible}' == 'True'
       Click Element       ${Search_Again_Pair}
       Wait Until Page Contains Element      ${Lunar_Call_Pro_Watch_ID}       20
       Click Element       ${Lunar_Call_Pro_Watch_ID}
    END

CY_WavePrimiaTalk_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element      ${Wave_Primia_Talk_Watch_ID}       20
       Click Element       ${Wave_Primia_Talk_Watch_ID}
    END

CY_WavePrimiaTalk_Search_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Search_Again_Pair}          10
    IF   '${ElementVisible}' == 'True'
       Click Element       ${Search_Again_Pair}
       Wait Until Page Contains Element       ${Wave_Primia_Talk_Watch_ID}       20
       Click Element       ${Wave_Primia_Talk_Watch_ID}
    END


CY_Landing_Page
  # Dashboard
    Wait Until Page Contains Element    ${Home_Icon}           50
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
    Weekly_Report_Subscription
    Dashboard_Skip_Notification_Settings_Feature



Verify_CY_Features
    Wait Until Page Contains Element          ${Auto_activity_feature}      20
    Element Should Be Visible     ${Auto_activity_feature}
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Auto_Stress&HRV_feature}
    Element Should Be Visible     ${Nightly_breathing_feature}
#    Element Should Be Visible     ${Female_Wellness_feature}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${qr_tray}
    Scroll          ${Alarm_feature}           ${Auto_activity_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${Nudges_feature}
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Weather_feature}
    Element Should Be Visible     ${Notification_feature}
    Scroll        ${Alarm_feature}                  ${Notification_feature}
Verify_opp3_Features
    Wait Until Page Contains Element          ${Auto_HR_feature}      20
    Element Should Be Visible     ${Auto_HR_feature}
#    Element Should Be Visible     ${Female_Wellness_feature}
    Element Should Be Visible     ${Alarm_feature}
#    Element Should Be Visible     ${qr_tray}
    Scroll          ${Sedentary_reminder_feature}           ${Auto_HR_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible    ${Custom_reminder}
    Element Should Be Visible     ${Nudges_feature}
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Weather_feature}
    Element Should Be Visible     ${Notification_feature}

Verify_JL_sigma_Features
    Wait Until Page Contains Element          ${Auto_HR_feature}      20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${qr_tray}
    Element Should Be Visible     ${Alarm_feature}
    Scroll          ${Sedentary_reminder_feature}           ${Auto_HR_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${Nudges_feature}
    Element Should Be Visible    ${sos_feature}
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Notification_feature}



Verify_CY_SenseAI_Feature
   Wait Until Page Contains Element       ${SensAI_Feature}          20
   Click Element            ${SensAI_Feature}
   ${IsPopUpShowing}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${SnseAI_Skip}           10
   IF   '${IsPopUpShowing}' == 'True'
   #Wait Until Page Contains Element         ${SnseAI_Skip}         20
     Click Element        ${SnseAI_Skip}
     Wait Until Page Contains Element        ${Proceed_to_SesnAI_Button}        20
     Click Element       ${Proceed_to_SesnAI_Button}
     Wait Until Page Contains Element        ${SensAI_Overall_Stats}      20
     Wait Until Page Contains Element         ${SensAI_Details}          20
     Wait Until Page Contains Element         ${Batting_text}          20
     #Wait Until Page Contains Element         ${Bowling_text}         20
     Wait Until Page Contains Element         ${Back_arrow}          20
     Click Element        ${Back_arrow}
   ELSE
        Wait Until Page Contains Element         ${Back_arrow}          20
        Click Element        ${Back_arrow}
   END



CY_Watch_Control_Feature
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
    Wait Until Page Contains Element         ${Enable/Disable_QuickReply}   20
    Click Element              ${Enable/Disable_QuickReply}
     ${element}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Done_buttton}    10
    IF    '${element}'=='True'
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
        Wait Until Page Contains Element       ${Navigate_back}       20
        Click Element         ${Navigate_back}
        Wait Until Page Contains Element         ${Navigate_back}      20
        Click Element            ${Navigate_back}
        Wait Until Page Contains Element          ${Navigate_back}      20
        Click Element               ${Navigate_back}
        Wait Until Page Contains Element          ${Enable/Disable_QuickReply}      20
        Click Element             ${Enable/Disable_QuickReply}
    END
    Wait Until Page Contains Element        ${Manage_quick_reply_option}        20
    Click Element           ${Manage_quick_reply_option}
    Sleep    5
    Wait Until Page Contains Element            ${Busy_text}    20
    Element Should Be Visible         ${Driving_text}
    Element Should Be Visible         ${Unable_text}
    Element Should Be Visible         ${At_work_text}
    Element Should Be Visible          ${Sleeping_text}
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element               ${Back_arrow}
    Wait Until Page Contains Element         ${Back_arrow}      20
    Click Element              ${Back_arrow}
    Wait Until Page Contains Element        ${Quick_reply_Discard_Save}      20
    Click Element        ${Quick_reply_Discard_Save}
#    Wait Until Page Contains Element         ${Back_arrow}      20
#    Click Element              ${Back_arrow}
#    Wait Until Page Contains Element        ${Quick_reply_Discard_Save}      20
#    Click Element        ${Quick_reply_Discard_Save}

    Wait Until Page Contains Element         ${Battery_Saver_Feature}      20
    Click Element     ${Battery_Saver_Feature}
    Wait Until Page Contains Element       ${Battery_Saver_Standard_Mode}     10
    Wait Until Page Contains Element       ${Battery_Saver_Advanced_Mode}     10
    Wait Until Page Contains Element       ${Back_arrow}     20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element        ${Lift_View_Arrow}     20
    Click Element          ${Lift_View_Arrow}
    Wait Until Page Contains Element       ${Enable/Disable_Lift_View}       20
    Click Element       ${Enable/Disable_Lift_View}
    Wait Until Page Contains Element     ${Save_button}     20
    Click Element    ${Save_button}
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
    #Wait Until Page Contains Element          ${Xtend_pro_watch_name}      20
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element       ${Back_arrow}
JL_Watch_Control_Feature
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
    Wait Until Page Contains Element         ${Enable/Disable_QuickReply}   20
    Click Element              ${Enable/Disable_QuickReply}
    ${element}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Done_buttton}    10
    IF    '${element}'=='True'
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
        Wait Until Page Contains Element       ${Navigate_back}       20
        Click Element         ${Navigate_back}
        Wait Until Page Contains Element         ${Navigate_back}      20
        Click Element            ${Navigate_back}
        Wait Until Page Contains Element          ${Navigate_back}      20
        Click Element               ${Navigate_back}
        Wait Until Page Contains Element          ${Enable/Disable_QuickReply}      20
        Click Element             ${Enable/Disable_QuickReply}
    END
    Wait Until Page Contains Element        ${Manage_quick_reply_option}        20
    Click Element           ${Manage_quick_reply_option}
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${enable_Quick_reply_toast}        10
    IF   '${ElementVisible}' == 'True'
        Wait Until Element Is Visible    com.coveiot.android.boat:id/saveBtn    10
        Click Element    com.coveiot.android.boat:id/saveBtn
        Wait Until Page Contains Element       com.coveiot.android.boat:id/saveBtn      10
        Click Element        com.coveiot.android.boat:id/saveBtn
    ELSE
        Sleep    5
        Wait Until Page Contains Element            ${Busy_text}    20
        Element Should Be Visible         ${Driving_text}
        Element Should Be Visible         ${Unable_text}
        Element Should Be Visible         ${At_work_text}
        Element Should Be Visible          ${Sleeping_text}
        Wait Until Page Contains Element         ${Back_arrow}     20
        Click Element               ${Back_arrow}
        Wait Until Page Contains Element         ${Back_arrow}      20
        Click Element              ${Back_arrow}
        Wait Until Page Contains Element        ${Quick_reply_Discard_Save}      20
        Click Element        ${Quick_reply_Discard_Save}
    END
#    Wait Until Page Contains Element         ${Back_arrow}      20
#    Click Element              ${Back_arrow}
#    Wait Until Page Contains Element        ${Quick_reply_Discard_Save}      20
#    Click Element        ${Quick_reply_Discard_Save}
    Wait Until Page Contains Element        ${Lift_View_Arrow}     20
    Click Element          ${Lift_View_Arrow}
    Wait Until Page Contains Element       ${Enable/Disable_Lift_View}       20
    Click Element       ${Enable/Disable_Lift_View}
    Wait Until Page Contains Element     ${Save_button}     20
    Click Element    ${Save_button}
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
    #Wait Until Page Contains Element          ${Xtend_pro_watch_name}      20
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element       ${Back_arrow}

CY_Home_Page_Verification
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep    5
    Weekly_Report_Subscription
    Wait Until Page Contains Element       ${BT_Calltext}        20
    Click Element        ${BT_Calltext}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
  Wait Until Page Contains Element     ${Open_Watch_face_Studio}    20
    Click Element      ${Open_Watch_face_Studio}
    Sleep    5
    ${element}=   Run Keyword And Return Status     Wait Until Element Is Visible    ${Watch_Face_Sudio_Skip_Button}   10
    IF    '${element}'=='True'
         Click Element    ${Watch_Face_Sudio_Skip_Button}
    END
    Sleep    1
    Wait Until Element Is Visible    ${WFS_save}    20
    Click Element    ${WFS_save}
    Sleep    5
    ${visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${WFS_Apply}    20
    IF  '${visible}'=='True'
        Click Element    ${WFS_Apply}
        Sleep    30
        Wait Until Element Is Visible     ${Ok_button}     30
        Click Element    ${Ok_button}
    END

    ${ele} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${feedback_popup_close}    10
    IF    '${ele}'=='True'
        Click Element    ${feedback_popup_close}
    END
    Wait Until Element Is Visible    ${Back_arrow}    20
    Click Element    ${Back_arrow}
#    Wait Until Element Is Visible    ${Settings_Icon}    10
#    Click Element    ${Settings_Icon}
#    Wait Until Element Is Visible    ${Watch_Status_Text}    10
#    Click Element    ${Watch_Status_Text}
#    Wait Until Element Is Visible    ${Watch_Disconnect_Text}    10
#    Click Element    ${Watch_Disconnect_Text}
#    Wait Until Element Is Visible    ${Ok_button}    10
#    Click Element    ${Ok_button}
#
#    Wait Until Element Is Visible    ${System_Persmission1}    10


CY_Home_Page_Scroll_And_Verify
   ${IsElementVisible}=      Run Keyword And Return Status       Wait Until Page Contains Element       ${Goal_details}           10
   ${IsElementVisible1}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Blueetooth_Text}         10
   IF  '${IsElementVisible}' == 'True' and '${IsElementVisible1}' == 'True'
      Scroll        ${Fitness_overview_headder}          ${Blueetooth_Text}
      Wait Until Page Contains Element       ${Sleep_Card}           10
      Click Element        ${Sleep_Card}
      Wait Until Page Contains Element      ${Home_Icon}       10
      Click Element       ${Home_Icon}
      Sleep    4
      Scroll         ${Fitness_overview_headder}          ${Blueetooth_Text}
      Wait Until Page Contains Element       ${Distance_Card}         10
      Click Element         ${Distance_Card}
      Wait Until Page Contains Element      ${Home_Icon}       10
      Click Element       ${Home_Icon}
      Sleep    4
      Scroll         ${Fitness_overview_headder}          ${Blueetooth_Text}
      Wait Until Page Contains Element       ${Calrories_Card}       10
      Click Element          ${Calrories_Card}
      Wait Until Page Contains Element      ${Home_Icon}       10
      Click Element       ${Home_Icon}
      Sleep    4
   END

   ${IsElementVisible}=      Run Keyword And Return Status       Wait Until Page Contains Element       ${Goal_details}           10
   ${IsElementVisible1}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Blueetooth_Text}         10
   IF  '${IsElementVisible}' == 'True' and '${IsElementVisible1}' == 'True'
      Scroll       ${Goal_details}             ${Blueetooth_Text}
      Wait Until Page Contains Element      ${Heart_rate_Vitals_Card}       10
      Click Element       ${Heart_rate_Vitals_Card}
      Wait Until Page Contains Element      ${Home_Icon}      10
      Click Element     ${Home_Icon}
      Sleep    4
      Scroll      ${Goal_details}           ${Blueetooth_Text}
      Wait Until Page Contains Element      ${Spo2_vitals_card}     20
      Click Element      ${Spo2_vitals_card}
      Wait Until Page Contains Element      ${Home_Icon}      10
      Click Element     ${Home_Icon}
      Sleep    4
      Scroll       ${Goal_details}           ${Blueetooth_Text}
      Wait Until Page Contains Element      ${Stress_Level_Vital_Card}     20
      Click Element        ${Stress_Level_Vital_Card}
      Wait Until Page Contains Element      ${Home_Icon}      10
      Click Element     ${Home_Icon}
      Sleep    4
   END
   ${IsElementVisible}=      Run Keyword And Return Status       Wait Until Page Contains Element       ${Goal_details}           10
   ${IsElementVisible1}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Blueetooth_Text}         10
   IF  '${IsElementVisible}' == 'True' and '${IsElementVisible1}' == 'True'
      Scroll        ${Goal_details}           ${Blueetooth_Text}
      Wait Until Page Contains Element      ${Track_more_vitals}    20
      Click Element         ${Track_more_vitals}
      Wait Until Page Contains Element      ${Back_arrow}         10
      Click Element       ${Back_arrow}
      Wait Until Page Contains Element     ${Track_more_vitals}         20
      Scroll      ${Track_more_vitals}         ${Fitness_Vitals_Option}
      Sleep     4
   END

   ${IsElementVisible}=      Run Keyword And Return Status       Wait Until Page Contains Element      ${700_Activity_Card}           10
   ${IsElementVisible1}=     Run Keyword And Return Status       Wait Until Page Contains Element      ${Boat_Exclusive_headder}       10
   IF  '${IsElementVisible}' == 'True' and '${IsElementVisible1}' == 'True'
#       Click Element     ${700_Activity_Card}
#       Wait Until Page Contains Element     ${Ok_button}
#       Click Element    ${Ok_button}
#       Wait Until Page Contains Element     ${Back_arrow}     10
#       Click Element     ${Back_arrow}
      Scroll          ${700_Activity_Card}          ${Boat_Exclusive_headder}
      Sleep    4
   END

   ${IsElementVisible}=      Run Keyword And Return Status       Wait Until Page Contains Element      ${700_Activity_Card}          10
   ${IsElementVisible1}=     Run Keyword And Return Status       Wait Until Page Contains Element     ${My_Buddies_headder}       10
   IF  '${IsElementVisible}' == 'True' and '${IsElementVisible1}' == 'True'
      Scroll       ${My_Buddies_headder}      ${700_Activity_Card}
      Wait Until Page Contains Element       ${Do_more_headder}      10
      Wait Until Page Contains Element       ${Wellness_Crew_Card}      10
      Click Element    ${Wellness_Crew_Card}
      Wait Until Page Contains Element     ${Back_arrow}       10
      Click Element     ${Back_arrow}
      Wait Until Page Contains Element       ${Sport_Score_card}      10
      Click Element     ${Sport_Score_card}
      Wait Until Page Contains Element      ${Back_arrow}      10
      Click Element      ${Back_arrow}
      Wait Until Page Contains Element       ${Build_Fitness_Plan_Card}     10
      Click Element     ${Build_Fitness_Plan_Card}
      Wait Until Page Contains Element      ${Fitness_Plan_Back_Button}      10
      Click Element      ${Fitness_Plan_Back_Button}
   END

   ${IsElementVisible}=      Run Keyword And Return Status       Wait Until Page Contains Element      ${Build_Fitness_Plan_Card}         10
   ${IsElementVisible1}=     Run Keyword And Return Status       Wait Until Page Contains Element    ${Wellness_Crew_Card}     10
   IF  '${IsElementVisible}' == 'True' and '${IsElementVisible1}' == 'True'
       Scroll         ${Build_Fitness_Plan_Card}     ${Wellness_Crew_Card}
       Wait Until Page Contains Element       ${Cult_fit_headder}     10
       Click Element       ${Cult_Videos}
       Wait Until Page Contains Element     ${Back_arrow}        10
       Click Element     ${Back_arrow}
       Wait Until Page Contains Element       ${Challenges_Headder}   10
       Scroll      ${Challenges_Headder}       ${Cult_fit_headder}
       Wait Until Page Contains Element     ${Best_Offers_headder}     10
    END