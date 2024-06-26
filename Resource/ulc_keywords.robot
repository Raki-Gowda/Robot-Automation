*** Settings ***
Library     AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../TestData/Deviceinfo.robot
Resource     ../Resource/keywords.robot


*** Keywords ***
ULC_WavePlay_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Play
    Wait Until Page Contains Element       ${WavePlay_Watch_In_List}         20
    Click Element      ${WavePlay_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${WavePlay_watch_ID}           30
    Click Element        ${WavePlay_watch_ID}
    ULC_Wave_Play_Try_Agian_Pairing
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

ULC_WaveBeat_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Beat
    Wait Until Page Contains Element       ${WaveBeat_Watch_In_List}         20
    Click Element     ${WaveBeat_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element    ${WaveBeat_watch_ID}           30
    Click Element        ${WaveBeat_watch_ID}
    Sleep    5
    ULC_Wave_Beat_Try_Agian_Pairing
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

ULC_WaveStyle_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Style
    Wait Until Page Contains Element       ${WaveStyle_Watch_In_List}         20
    Click Element     ${WaveStyle_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element    ${WaveStyle_watch_ID}            30
    Click Element        ${WaveStyle_watch_ID}
    ULC_Wave_Style_Try_Agian_Pairing
    Sleep    3
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

ULC_Wave_Beat_Call_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Beat Call
    Wait Until Page Contains Element      ${Wave_Beat_Call_Watch_In_List}       20
    Click Element      ${Wave_Beat_Call_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element      ${Wave_Beat_Call_watch_ID}         30
    Click Element        ${Wave_Beat_Call_watch_ID}
    Sleep    3
    ULC_Wave_Beat_Call_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

ULC_Wave_Style_Call_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Style Call
    Wait Until Page Contains Element      ${Wave_Style_Call_Watch_In_List}      20
    Click Element      ${Wave_Style_Call_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element      ${Wave_Style_Call_watch_ID}         30
    Click Element        ${Wave_Style_Call_watch_ID}
    Sleep    3
    ULC_Wave_Style_Call_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
         Click Element    ${Contiue_HomePage_button}
    END

ULC_Wave_Smart_Call_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Smart Call
    Wait Until Page Contains Element      ${Wave_Smart_Call_Watch_In_List}     20
    Click Element      ${Wave_Smart_Call_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element      ${Wave_Smart_Call_watch_ID}         30
    Click Element        ${Wave_Smart_Call_watch_ID}
    Sleep    3
    ULC_Wave_Smart_Call_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END


ULC_Lynk_Voice_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Lynk Voice
    Wait Until Page Contains Element      ${Wave_Lynk_Voice_Watch_In_List}     20
    Click Element      ${Wave_Lynk_Voice_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element      ${Wave_Lynk_Voice_watch_ID}          30
    Click Element       ${Wave_Lynk_Voice_watch_ID}
    Sleep    3
    ULC_Lynk_Voice_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   40
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END


ULC5BT_Ultima_Call_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Ultima Call
    Wait Until Page Contains Element      ${ULC5BT_Ultima_Call_Watch_In_List}    20
    Click Element      ${ULC5BT_Ultima_Call_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element      ${ULC5BT_Ultima_Call_watch_ID}        30
    Click Element       ${ULC5BT_Ultima_Call_watch_ID}
    Sleep    3
    ULC5BT_Ultima_Call_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
#    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
#    Click Element     ${Contiue_HomePage_button}



ULC_Wave_Play_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${WavePlay_watch_ID}        20
       Click Element        ${WavePlay_watch_ID}
    END

ULC_Wave_Beat_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${WaveBeat_watch_ID}        20
       Click Element        ${WaveBeat_watch_ID}
    END


ULC_Wave_Style_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${WaveStyle_watch_ID}       20
       Click Element        ${WaveStyle_watch_ID}
    END


ULC_Wave_Beat_Call_Try_Again_Pairing
   ${Beat_CallElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${Beat_CallElementVisible}' == 'True'
       Click Element       ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Wave_Beat_Call_watch_ID}       20
       Click Element        ${Wave_Beat_Call_watch_ID}
    END

ULC_Wave_Style_Call_Try_Again_Pairing
   ${Style_CallElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${Style_CallElementVisible}' == 'True'
       Click Element       ${Try_Agian_For_Pair}
       Wait Until Page Contains Element      ${Wave_Style_Call_watch_ID}       20
       Click Element       ${Wave_Style_Call_watch_ID}
    END

ULC_Wave_Smart_Call_Try_Again_Pairing
   ${Smart_CallElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${Smart_CallElementVisible}' == 'True'
       Click Element       ${Try_Agian_For_Pair}
       Wait Until Page Contains Element      ${Wave_Smart_Call_watch_ID}        20
       Click Element      ${Wave_Smart_Call_watch_ID}
    END


ULC_Lynk_Voice_Try_Again_Pairing
   ${Lynk_Voice_ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${Lynk_Voice_ElementVisible}' == 'True'
       Click Element       ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Wave_Lynk_Voice_watch_ID}       20
       Click Element        ${Wave_Lynk_Voice_watch_ID}
    END

ULC5BT_Ultima_Call_Try_Again_Pairing
   ${Ultima_Call_ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${Ultima_Call_ElementVisible}' == 'True'
       Click Element       ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${ULC5BT_Ultima_Call_watch_ID}      20
       Click Element        ${ULC5BT_Ultima_Call_watch_ID}
    END

ULC_Landing_Page
    Weekly_Report_Subscription
    Dashboard_Skip_Notification_Settings_Feature
    Wait Until Page Contains Element     ${Home_Icon}           30
    Wait Until Page Contains Element    ${Fitness_Icon}        20
    Wait Until Page Contains Element    ${MyWatch_Icon}         20
    Wait Until Page Contains Element    ${FitCrew_Icon}         20
    Wait Until Page Contains Element    ${Settings_Icon}        20
    Wait Until Page Contains Element     ${Boat_Logo}            20
    Wait Until Page Contains Element    ${Blueetooth_Text}
    Wait Until Page Contains Element     ${Connect_Text}
    Wait Until Page Contains Element     ${Watch_Image}
    #Wait Until Page Contains Element    ${Battery_Icon}
    Wait Until Page Contains Element     ${Setup_your_Watch_text}


ULC_Wave_Play_Features_Display
    Wait Until Page Contains Element         ${Auto_HR_feature}         20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Notification_feature}

ULC2_Wave_Beat/Style/Smart/Lynk_Call_Features_Display
    Wait Until Page Contains Element         ${Auto_HR_feature}         20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Notification_feature}

ULC5BT_Ultima_Call_Features_Display
    Wait Until Page Contains Element         ${Auto_HR_feature}         20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible    ${qr_tray}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Scroll    ${Sedentary_reminder_feature}    ${qr_tray}
    Element Should Be Visible     ${Nudges_feature}
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Notification_feature}

Verify_ULC_watch_Control_Feature
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
    #Wait Until Page Contains Element         ${Xtend_Sport_watch_name}       20
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element       ${Back_arrow}


Verify_ULC_Wave_Beat_Call_Watch_Control_Feature
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
    Wait Until Page Contains Element         ${Lift_View_Arrow}      20
    Click Element           ${Lift_View_Arrow}
    Wait Until Page Contains Element      ${Enable/Disable_Lift_View}     20
    Click Element        ${Enable/Disable_Lift_View}
    Wait Until Page Contains Element       ${Save_button}    20
    Click Element      ${Save_button}
    Wait Until Page Contains Element       ${Ok_button}    20
    Click Element        ${Ok_button}
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
    Wait Until Page Contains Element      ${Firmware_Version}       20
    Element Should Be Visible       ${Firmware_Version}
    Element Should Be Visible       ${Watch_Name}
    Element Should Be Visible       ${App_Version}
    Element Should Be Visible       ${User_Manual_Option}
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element       ${Back_arrow}


ULC_Wave_Play_Verify_My_Watch_Page
   Wait Until Page Contains Element      ${MyWatch_Icon}     20
   Click Element                         ${MyWatch_Icon}
   Wait Until Page Contains Element        ${BT_status_text}       20
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
   Wait Until Page Contains Element          ${Watch_Settings_option1}          20
   Click Element           ${Watch_Settings_option1}
   Wait Until Page Contains Element         ${Watch_Settings_option1}        20
   Click Element         ${MyWatch_Icon}
   Sleep          4
   Scroll           ${Watch_Settings_option1}             ${BT_status_text}
   Wait Until Page Contains Element         ${find_my_watch_text}        20
   Click Element                            ${find_my_watch_text}
   Wait Until Page Contains Element         ${find_my_watch_text1}        20
   Wait Until Page Contains Element         ${Back_arrow}              20
   Click Element                            ${Back_arrow}
   

ULC_Wave_Beat_Call_My_Watch_Page
   Wait Until Page Contains Element      ${MyWatch_Icon}     20
   Click Element                         ${MyWatch_Icon}
   #Wait Until Page Contains Element          ${watch_name_textin_mywatch_tab}     20
   Wait Until Page Contains Element        ${BT_status_text}       20
   #Element Should Contain Text      ${watch_name_text}      Cosmos Pro
#   Element Should Be Visible          ${Cosmos_watchface}
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
#  Wait Until Page Contains Element         ${CosmosProwatch_feature}        20

ULC_WavePlay_Verify_Home_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep    5
    Weekly_Report_Subscription
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
    Sleep    1
    Wait Until Element Is Visible    ${WFS_Apply}   20
    Click Element    ${WFS_Apply}
    Sleep    20
    Wait Until Element Is Visible     ${Ok_button}     10
    Click Element    ${Ok_button}
    ${ele} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${feedback_popup_close}    10
    IF    '${ele}'=='True'
        Click Element    ${feedback_popup_close}
    END
    Wait Until Element Is Visible    ${Back_arrow}    20
    Click Element    ${Back_arrow}
    Wait Until Element Is Visible    ${Settings_Icon}    10
    Click Element    ${Settings_Icon}
    Wait Until Element Is Visible    ${Watch_Status_Text}    10
    Click Element    ${Watch_Status_Text}
    Wait Until Element Is Visible    ${Watch_Disconnect_Text}    10
    Click Element    ${Watch_Disconnect_Text}
    Wait Until Element Is Visible    ${Ok_button}    10
    Click Element    ${Ok_button}
    
    Wait Until Element Is Visible    ${System_Persmission1}    10






#    Wait Until Page Contains Element    ${Watch_Face_Sudio_Back_word}        20
#    Click Element      ${Watch_Face_Sudio_Back_word}
#    Wait Until Page Contains Element     ${Watch_Face_Sudio_Confirm}     20
#    Click Element       ${Watch_Face_Sudio_Confirm}
#
#     Sleep    5
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#     Sleep       5
#
#    Wait Until Page Contains Element               ${Sleep_Card}        20
#    Click Element                ${Sleep_Card}
#    Sleep       5
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Wait Until Page Contains Element               ${Distance_Card}        20
#    Click Element       ${Distance_Card}
#    Sleep       5
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Wait Until Page Contains Element               ${Calrories_Card}       20
#    Click Element      ${Calrories_Card}
#    Sleep       5
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5

#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#
#
#    Wait Until Page Contains Element           ${Heart_rate_Vitals_Card}      20
#    Click Element           ${Heart_rate_Vitals_Card}
#    Wait Until Page Contains Element         ${Home_Icon}   20
#    Click Element      ${Home_Icon}
#    Sleep    5
#
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#
#    Wait Until Page Contains Element           ${Spo2_vitals_card}      20
#    Click Element        ${Spo2_vitals_card}
#    Wait Until Page Contains Element         ${Home_Icon}   20
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#    Wait Until Page Contains Element       ${Energy_Meter_Card}          20
#    Click Element           ${Energy_Meter_Card}
#    Wait Until Page Contains Element         ${Home_Icon}   20
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#    Sleep    5
#    Scroll     ${Spo2_vitals_card}       ${Heart_rate_Vitals_Card}
#
#    Wait Until Page Contains Element          ${Track_more_vitals}       20
#    Click Element       ${Track_more_vitals}
#    Wait Until Page Contains Element      ${Back_arrow}      20
#    Click Element       ${Back_arrow}

#    Wait Until Page Contains Element           ${Boat_Exclusive_headder}     20
#    Scroll          ${Boat_Exclusive_headder}       ${Spo2_vitals_card}
#
##    Wait Until Page Contains Element           ${Boat_Exclusive_headder}     20
##    Scroll           ${My_Buddies_headder}             ${Boat_Exclusive_headder}
##    Sleep    5
#    Wait Until Page Contains Element        ${My_Buddies_headder}     20
#    Scroll      ${My_Buddies_headder}           ${Open_Watch_face_Studio}
#    Wait Until Page Contains Element             ${Wellness_Crew_Card}     20
#    Click Element         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Back_arrow}         20
#    Click Element       ${Back_arrow}
#
#
#    Wait Until Page Contains Element           ${Wellness_Crew_Card}        20
#    Scroll            ${Wellness_Crew_Card}      ${My_Buddies_headder}
#
#    Wait Until Page Contains Element        ${Build_fitness_plan_card}     20
#    Click Element       ${Build_fitness_plan_card}
#    Wait Until Page Contains Element      ${Fitness_Plan_Back_Button}       20
#    Click Element       ${Fitness_Plan_Back_Button}
#    Sleep    5
#    Scroll     ${Build_fitness_plan_card}         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Cult_Videos}      20
#    Click Element        ${Cult_Videos}
#    Wait Until Page Contains Element      ${Back_arrow}       20
#    Click Element         ${Back_arrow}