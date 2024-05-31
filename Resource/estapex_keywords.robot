*** Settings ***
Library      AppiumLibrary
Resource     locators.robot
Resource     ../TestData/Deviceinfo.robot
Resource     ../Resource/keywords.robot


*** Keywords ***
Estapex_Stride_Voice_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Stride Voice
    Wait Until Page Contains Element       ${Stride_Voice_Watch_In_List}       20
    Click Element      ${Stride_Voice_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Estapex_Stride_Voice_Search_Again_Pairing
    Wait Until Page Contains Element    ${Stride_Voice_watch_ID}          30
    Click Element       ${Stride_Voice_watch_ID}
    Estapex_Stride_Voice_Search_Again_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}


Estapex_Primia_Ace_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Primia Ace
    Wait Until Page Contains Element       ${Primia_Ace_Watch_In_List}       20
    Click Element      ${Primia_Ace_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Estapex_Primia_Ace_Try_Again_Pairing
    Wait Until Page Contains Element    ${Primia_Ace_watch_ID}          30
    Click Element       ${Primia_Ace_watch_ID}
    Estapex_Primia_Ace_Search_Again_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}


Estapex_Xtend_Plus_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Xtend Plus
    Wait Until Page Contains Element       ${Xtend_Plus_Watch_In_List}       20
    Click Element      ${Xtend_Plus_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Estapex_Xtend_Plus_Try_Again_Pairing
    Wait Until Page Contains Element    ${Xtend_Plus_watch_ID}         30
    Click Element       ${Xtend_Plus_watch_ID}
    Estapex_Xtend_Plus_Search_Again_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}



Estapex_Stride_Voice_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Try_Agian_For_Pair}              20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Stride_Voice_watch_ID}        20
       Click Element       ${Stride_Voice_watch_ID}
    END


Estapex_Stride_Voice_Search_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element       ${Stride_Voice_watch_ID}        20
       Click Element       ${Stride_Voice_watch_ID}
    END


Estapex_Primia_Ace_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Try_Agian_For_Pair}              20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Primia_Ace_watch_ID}        20
       Click Element       ${Primia_Ace_watch_ID}
    END


Estapex_Primia_Ace_Search_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element      ${Primia_Ace_watch_ID}       20
       Click Element      ${Primia_Ace_watch_ID}
    END


Estapex_Xtend_Plus_Try_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Try_Agian_For_Pair}              20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Xtend_Plus_watch_ID}       20
       Click Element        ${Xtend_Plus_watch_ID}
    END


Estapex_Xtend_Plus_Search_Again_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element       ${Xtend_Plus_watch_ID}      20
       Click Element       ${Xtend_Plus_watch_ID}
    END


Estapex_Landing_Page
  # Dashboard
    Wait Until Page Contains Element    ${Home_Icon}           30
    Element Should Be Visible    ${Home_Icon}
    Element Should Be Visible    ${Fitness_Icon}
    Element Should Be Visible    ${MyWatch_Icon}
    Element Should Be Visible    ${FitCrew_Icon}
    Element Should Be Visible    ${Settings_Icon}
    Element Should Be Visible     ${Boat_Logo}
    Element Should Be Visible    ${Blueetooth_Text}
#    Element Should Be Visible     ${Connect_Text}
    Element Should Be Visible     ${BT_Calltext}
    Element Should Be Visible     ${Watch_Image}
    Element Should Be Visible     ${Battery_Icon}
    Element Should Be Visible     ${Setup_your_Watch_text}
    Weekly_Report_Subscription
    Dashboard_Skip_Notification_Settings_Feature

Verify_Estapex_Stride_Voice_Features
   Element Should Be Visible    ${Auto_HR_feature}
   Element Should Be Visible    ${Female_Wellness_feature}
   Element Should Be Visible    ${Alarm_feature}
   Element Should Be Visible    ${Sedentary_reminder_feature}
   Element Should Be Visible    ${BT_calling__feature}
   Element Should Be Visible    ${Weather_feature}
   Element Should Be Visible    ${Notification_feature}


Verify_Estapex_Stride_Voice_watch_control_feature
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


Verify_Estapex/TouchELX_Steps_Vitals
   Wait Until Page Contains Element          ${Steps_Option}     20
   Click Element       ${Steps_Option}
   #Days
   Wait Until Page Contains Element        ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
#   Page Should Not Contain Element           ${Cove_logo}      20
#   Page Should Not Contain Element            ${Powerd_by_covetext}       20
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
#   Page Should Not Contain Element        ${Cove_logo}      20
#   Page Should Not Contain Element          ${Powerd_by_covetext}       20
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
#   Page Should Not Contain Element       ${Cove_logo}     20
#   Page Should Not Contain Element       ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}     20
   Click Element                            ${Close_ShareCard}



Verify_Estapex/TouchELX_Sleep_Vitals
  ##Sleep
   Wait Until Page Contains Element          ${Sleep_text}      10
   Click Element       ${Sleep_text}
   #Day
   Wait Until Page Contains Element         ${Days_tab}      20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
#   Page Should Not Contain Element             ${Cove_logo}      20
#   Page Should Not Contain Element         ${Powerd_by_covetext}      20
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
#   Page Should Not Contain Element        ${Cove_logo}      20
#   Page Should Not Contain Element      ${Powerd_by_covetext}      20
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
#   Page Should Not Contain Element         ${Cove_logo}      20
#   Page Should Not Contain Element         ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}      20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}

Verify_Estapex/TouchELX_HR_Vitals
   ##Heart Rate
   Wait Until Page Contains Element          ${Heart_rate_text}      10
   Click Element        ${Heart_rate_text}
   Wait Until Page Contains Element         ${Days_tab}     20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element         ${Share_Icon}   20
   Click Element        ${Share_Icon}
   Sleep      8
#   Page Should Not Contain Element         ${Cove_logo}       20
#   Page Should Not Contain Element         ${Powerd_by_covetext}       20
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
#   Page Should Not Contain Element         ${Cove_logo}      20
#   Page Should Not Contain Element        ${Powerd_by_covetext}        20
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
#   Page Should Not Contain Element         ${Cove_logo}      20
#   Page Should Not Contain Element        ${Powerd_by_covetext}     20
   Wait Until Page Contains Element         ${desclimer_text}    20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element        ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}

Verify_Estapex/TouchELX_SPO2_Vitals
   ##SPO2
   Wait Until Page Contains Element          ${SPO2_text}      20
   Click Element       ${SPO2_text}

   Wait Until Page Contains Element       ${Share_Icon}   20
   Click Element        ${Share_Icon}
   Sleep      4
#   Page Should Not Contain Element         ${Cove_logo}     20
#   Page Should Not Contain Element        ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}    20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}
   Wait Until Page Contains Element          ${SPO2_text}     20


Verify_Estapex/TouchELX_Stress_Vitals
   Wait Until Page Contains Element     ${Stress_text}     20
   Click Element         ${Stress_text}

   #Days
   Wait Until Page Contains Element        ${Days_tab}       20
   Click Element         ${Days_tab}
   Wait Until Page Contains Element        ${Share_Icon}  20
   Click Element        ${Share_Icon}
   Sleep      4
#   Page Should Not Contain Element        ${Cove_logo}      20
#   Page Should Not Contain Element         ${Powerd_by_covetext}     20
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
#   Page Should Not Contain Element          ${Cove_logo}      20
#   Page Should Not Contain Element        ${Powerd_by_covetext}       20
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
#   Page Should Not Contain Element         ${Cove_logo}      20
#   Page Should Not Contain Element         ${Powerd_by_covetext}      20
   Wait Until Page Contains Element         ${desclimer_text}     20
   Wait Until Page Contains Element         ${Share_button}       20
   Wait Until Page Contains Element         ${Close_ShareCard}   20
   Click Element                            ${Close_ShareCard}

Estapex_Stride_Voice_My_Watch_Page
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

   Wait Until Page Contains Element         ${BT_calling_text_option}        20
   Click Element                            ${BT_calling_text_option}
   Wait Until Page Contains Element         ${Calling_text}        20
   Wait Until Page Contains Element         ${Back_arrow}     20
   Click Element                            ${Back_arrow}


EstaPex_Stride_Voice_Home_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep    5
    Weekly_Report_Subscription
    Wait Until Page Contains Element       ${BT_Calltext}        20
    Click Element        ${BT_Calltext}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element     ${Open_watch_face_Card}    20
    Click Element      ${Open_watch_face_Card}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}

#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep       5
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
#
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
#    Wait Until Page Contains Element        ${Stress_Level_Vital_Card}         20
#    Click Element           ${Stress_Level_Vital_Card}
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
#
#    Sleep      4
#    Scroll           ${My_Buddies_headder}            ${Boat_Exclusive_headder}
#    Sleep    5
#
#    Wait Until Page Contains Element             ${Wellness_Crew_Card}     20
#    Click Element         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Back_arrow}         20
#    Click Element       ${Back_arrow}
#    Sleep      4
#    Scroll            ${Sport_Score_card}      ${Do_more_headder}
#
#    Wait Until Page Contains Element   ${Sport_Score_card}       20
#    Click Element        ${Sport_Score_card}
#    Wait Until Page Contains Element     ${Back_arrow}    20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element        ${Build_fitness_plan_card}     20
#    Click Element       ${Build_fitness_plan_card}
#    Wait Until Page Contains Element      ${Fitness_Plan_Back_Button}     20
#    Click Element       ${Fitness_Plan_Back_Button}
#    Sleep    5
#    Scroll     ${Build_fitness_plan_card}         ${Sport_Score_card}
#    Wait Until Page Contains Element        ${Cult_Videos}      20
#    Click Element        ${Cult_Videos}
#    Wait Until Page Contains Element      ${Back_arrow}       20
#    Click Element         ${Back_arrow}