*** Settings ***
Library      AppiumLibrary
#Resource     locators.robot
Resource     Qy_KeyWorks.robot
Resource     ../TestData/Deviceinfo.robot
Resource     ../Resource/keywords.robot


*** Keywords ***

CZ_XtendSport_Pairing_Devices
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Xtend Sport
    Wait Until Page Contains Element       ${XtendSport_Watch_In_List}      20
    Click Element      ${XtendSport_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${XtendSport_watch_ID}          30
    Click Element        ${XtendSport_watch_ID}
    CZ_XtendSport_Try_Agian_Pairing
    Sleep    3
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   20
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

CZ_WavePro_Pairing_Devices
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Pro
    Wait Until Page Contains Element       ${WavePro_Watch_In_List}      20
    Click Element      ${WavePro_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${WavePro_watch_ID}          30
    Click Element        ${WavePro_watch_ID}
    CZ_WavePro_Try_Agian_Pairing
    Sleep    3
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   20
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

CZ_WavePrime_Pairing_Devices
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Prime
    Wait Until Page Contains Element       ${WavePrime_Watch_In_List}       20
    Click Element      ${WavePrime_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${WavePrime_watch_ID}          30
    Click Element       ${WavePrime_watch_ID}
    CZ_WavePrime_Try_Agian_Pairing
    Sleep    3
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   20
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END

CZ_XtendSport_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${XtendSport_watch_ID}      20
       Click Element        ${XtendSport_watch_ID}
    END

CZ_WavePro_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${WavePro_watch_ID}      20
       Click Element        ${WavePro_watch_ID}
    END

CZ_WavePrime_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${WavePrime_watch_ID}      20
       Click Element         ${WavePrime_watch_ID}
    END

CZ_Dashboard_Desclaimer
   ${Dis}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${CZ_Dashboard_Disclaimer_OK}           10
    IF   '${Dis}' == 'True'
       Click Element      ${CZ_Dashboard_Disclaimer_OK}
    END


CZ_Landing_Page
    CZ_Dashboard_Desclaimer
    Weekly_Report_Subscription
    Wait Until Page Contains Element    ${Home_Icon}           30
    Element Should Be Visible    ${Home_Icon}
    Element Should Be Visible    ${Fitness_Icon}
    Element Should Be Visible    ${MyWatch_Icon}
    Element Should Be Visible    ${FitCrew_Icon}
    Element Should Be Visible    ${Settings_Icon}
    Element Should Be Visible     ${Boat_Logo}
    Element Should Be Visible    ${Blueetooth_Text}
    Element Should Be Visible     ${Connect_Text}
    Element Should Be Visible     ${Watch_Image}
    Element Should Be Visible     ${Battery_Icon}
    Element Should Be Visible     ${Setup_your_Watch_text}



Verify_XtendSport_Features_Display
    Wait Until Page Contains Element         ${Auto_HR_feature}         20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Notification_feature}

Verify_WavePro_Features_Display
    Wait Until Page Contains Element         ${Auto_HR_feature}         20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${Notification_feature}

Verify_WavePrime_Features_Display
   Wait Until Page Contains Element     ${Auto_HR_feature}      20
   Element Should Be Visible      ${Alarm_feature}
   Element Should Be Visible      ${Sedentary_reminder_feature}
   Element Should Be Visible      ${Nudges_feature}
   Element Should Be Visible      ${Find_watch_feature}
   Element Should Be Visible      ${Weather_feature}
   Element Should Be Visible      ${Notification_feature}

Verify_Temperature_Vitals
   Wait Until Page Contains Element        ${Temperature_Text}          20
   Click Element        ${Temperature_Text}
   Wait Until Page Contains Element       ${Share_Icon}   20
   Click Element        ${Share_Icon}
   Sleep      4
   Wait Until Page Contains Element         ${Cove_logo}     20
   Wait Until Page Contains Element         ${Powerd_by_covetext}       20
   Wait Until Page Contains Element         ${desclimer_text}      20
   Wait Until Page Contains Element         ${Share_button}    20
   Wait Until Page Contains Element         ${Close_ShareCard}    20
   Click Element                           ${Close_ShareCard}

Verify_CZ_Nudges_Feature
    Wait Until Page Contains Element              ${Nudges_feature}     20
    Click Element           ${Nudges_feature}

    Wait Until Page Contains Element           ${Enable/Disbale_Nudge}         20
    Click Element                    ${Enable/Disbale_Nudge}

    Sleep    2

    Wait Until Page Contains Element     ${Nudge_Save}      20
    Click Element                        ${Nudge_Save}
     Sleep    2
    Wait Until Page Contains Element         ${Ok_button}       20
    Click Element           ${Ok_button}


Verify_CZ_Watch_Control_Feature
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


CZ_XtendSport_Verify_My_Watch_Page
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
#   Wait Until Page Contains Element         ${Cloud_watch_option}     20
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
   Wait Until Page Contains Element        ${Activity700_text}       20
   Scroll              ${Activity700_text}            ${Watch_Settings_option1}
#  Wait Until Page Contains Element         ${CosmosProwatch_feature}        20


CZ_WavePro_Verify_My_Watch_Page
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
#   Wait Until Page Contains Element         ${Cloud_watch_option}     20
   Wait Until Page Contains Element          ${Default_watch_option}    20
   Wait Until Page Contains Element        ${Back_arrow}       20
   Click Element                 ${Back_arrow}
   Wait Until Page Contains Element          ${Watch_Settings_option1}          20
   Click Element           ${Watch_Settings_option1}
   Wait Until Page Contains Element         ${Watch_Settings_option1}        20
   Click Element         ${MyWatch_Icon}
   Sleep          4
   Scroll           ${Watch_Settings_option1}             ${BT_status_text}


CZ_Verify_Profile_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep     10
    Wait Until Page Contains Element         ${Profile_pic}      20
    Click Element       ${Profile_pic}
    Wait Until Page Contains Element        ${User_Name}     20
    Wait Until Page Contains Element       ${Contact_Number}      20
    Wait Until Page Contains Element     ${View_Profile_Option}     20
    Click Element         ${View_Profile_Option}
    Wait Until Page Contains Element     ${Edit_Name}       20
    Element Should Be Visible      ${Edit_Name}
#    Element Should Be Visible      ${Edit_Email}
    Element Should Be Visible      ${Change_Contact}
    Scroll      ${Change_Contact}           ${Edit_Name}
    Wait Until Page Contains Element           ${Edit_Gender}      20
    Click Element      ${Edit_Gender}
    Wait Until Page Contains Element      ${Male_Gender}     20
    Click Element       ${Male_Gender}
    Wait Until Page Contains Element      ${Female_Gender}     20
    Click Element       ${Female_Gender}
    Wait Until Page Contains Element        ${Close_Gender_Popup}      20
    Click Element    ${Close_Gender_Popup}
    Wait Until Page Contains Element     ${Edit_Gender}       20
    Scroll     ${Edit_Gender}              ${Edit_Name}
    Wait Until Page Contains Element       ${Edit_Weight}        20
    Element Should Be Visible        ${Edit_Height}
    Scroll      ${BMI_headder}           ${Edit_Height}
    Wait Until Page Contains Element       ${BMI_headder}        20
    Element Should Be Visible        ${Run_Stride_Length}
    Element Should Be Visible        ${Walk_Stride_Length}
    Wait Until Page Contains Element        ${Back_arrow}       20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element       ${My_Goals_Headder}      20
    Wait Until Page Contains Element       ${Steps_Goal_Text}      20
    Click Element       ${Steps_Goal_Text}
    Wait Until Page Contains Element      ${Your_Steps_Goal_Text}       20
    Click Element    ${Back_arrow}
    Wait Until Page Contains Element       ${Sleep_Goal_Text}      20
    Click Element      ${Sleep_Goal_Text}
    Wait Until Page Contains Element      ${Your_Sleep_Goal_Text}     20
    Wait Until Page Contains Element     ${Back_arrow}       20
    Click Element     ${Back_arrow}
    Wait Until Page Contains Element       ${Steps_Goal_Text}      20
    Scroll     ${Steps_Goal_Text}          ${User_Name}
    Wait Until Page Contains Element      ${My_Achievement_headder}      20
    Scroll      ${Fitness_Buddies_headder}       ${My_Achievement_headder}
    Wait Until Page Contains Element     ${Fitness_Plan}    20
    Click Element     ${Fitness_Plan}
    Wait Until Page Contains Element     ${Back_arrow}      20
    Click Element    ${Back_arrow}
    Wait Until Page Contains Element       ${More_headder}       20
    Scroll     ${More_headder}         ${Fitness_Plan}
    Wait Until Page Contains Element     ${Fitness_Report}       20
    Click Element         ${Fitness_Report}
    Wait Until Page Contains Element     ${Back_arrow}      20
    Click Element    ${Back_arrow}
    Wait Until Page Contains Element     ${Rate_Us}    20
    Click Element     ${Rate_Us}
    Wait Until Page Contains Element     ${feedback_popup_close}      20
    Click Element    ${feedback_popup_close}
    Wait Until Page Contains Element     ${Share_App}      20
    Wait Until Page Contains Element      ${Log_out}      20
    Wait Until Page Contains Element     ${Delete_MY_Account}     20
    #Wait Until Page Contains Element      ${App_version_text}     20
    Wait Until Page Contains Element      ${Back_arrow}       20
    Click Element       ${Back_arrow}


CZ_XtendSport_Verify_Home_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep    5
    Weekly_Report_Subscription
    Wait Until Page Contains Element     ${Open_watch_face_Card}    20
    Click Element      ${Open_watch_face_Card}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
    Wait Until Element Is Visible    ${Settings_Icon}    10
    Click Element    ${Settings_Icon}
    Wait Until Element Is Visible    ${Watch_Status_Text}    10
    Click Element    ${Watch_Status_Text}
    Wait Until Element Is Visible    ${Watch_Disconnect_Text}    10
    Click Element    ${Watch_Disconnect_Text}
    Wait Until Element Is Visible    ${Ok_button}    10
    Click Element    ${Ok_button}

    Wait Until Element Is Visible    ${System_Persmission1}    10


#     Sleep    5
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#     Sleep    4
#     #Scroll      ${Sleep_Value}              ${Steps_count}
#     #Sleep         5
#
#    Wait Until Page Contains Element               ${Sleep_Card}        20
#    Click Element                ${Sleep_Card}
#    Sleep    5
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#     Sleep    4
##     Scroll      ${Sleep_Value}              ${Steps_count}
##    Sleep    5
#    Wait Until Page Contains Element               ${Distance_Card}        20
#    Click Element       ${Distance_Card}
#    Sleep    5
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#     Sleep    4
##     Scroll      ${Sleep_Value}              ${Steps_count}
##    Sleep    5
#    Wait Until Page Contains Element               ${Calrories_Card}       20
#    Click Element      ${Calrories_Card}
#    Sleep    5
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#     Sleep    4
##     Scroll      ${Sleep_Value}              ${Steps_count}
##    Sleep    5
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
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
##    Wait Until Page Contains Element        ${Energy_Meter_Card}          20
##    Click Element           ${Energy_Meter_Card}
##    Wait Until Page Contains Element         ${Home_Icon}   20
##    Click Element      ${Home_Icon}
##    Sleep    5
##    Scroll      ${Steps_count}               ${Blueetooth_Text}
##    Sleep    5
##    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#    Sleep    5
#    Scroll     ${Spo2_vitals_card}       ${Heart_rate_Vitals_Card}
#
#    Wait Until Page Contains Element          ${Track_more_vitals}       20
#    Click Element       ${Track_more_vitals}
#    Wait Until Page Contains Element      ${Back_arrow}      20
#    Click Element       ${Back_arrow}

#    Wait Until Page Contains Element          ${Track_more_vitals}       20
##    Wait Until Page Contains Element           ${Boat_Exclusive_headder}     20
#    Scroll          ${Track_more_vitals}        ${Fitness_Vitals_Option}
#
##    Wait Until Page Contains Element          ${700_Activity_Card}      20
##
##    Scroll      ${700_Activity_Card}         ${Track_more_vitals}
###    Scroll           ${My_Buddies_headder}             ${700_Activity_Card}
#   Sleep    5
#    Scroll          ${700_Activity_Card}           ${Boat_Exclusive_headder}
#    Sleep    5
#    Scroll           ${My_Buddies_headder}             ${700_Activity_Card}
#
#    Wait Until Page Contains Element             ${Wellness_Crew_Card}     20
#    Click Element         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Back_arrow}         20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element           ${Wellness_Crew_Card}        20
#    Scroll            ${Wellness_Crew_Card}         ${My_Buddies_headder}
#
#    Wait Until Page Contains Element   ${Sport_Score_card}       20
#    Click Element        ${Sport_Score_card}
#    Wait Until Page Contains Element     ${Back_arrow}    20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element        ${Build_fitness_plan_card}     20
#    Click Element       ${Build_fitness_plan_card}
#    Wait Until Page Contains Element         ${Fitness_Plan_Back_Button}   20
#    Click Element       ${Fitness_Plan_Back_Button}
#    Sleep    5
#    Scroll     ${Build_fitness_plan_card}         ${Sport_Score_card}
#    Wait Until Page Contains Element        ${Cult_Videos}      20
#    Click Element        ${Cult_Videos}
#    Wait Until Page Contains Element      ${Back_arrow}       20
#    Click Element         ${Back_arrow}


CZ_WavePro_Verify_Home_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep    5
    Weekly_Report_Subscription
    Wait Until Page Contains Element     ${Open_watch_face_Card}    20
    Click Element      ${Open_watch_face_Card}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
    Wait Until Element Is Visible    ${Settings_Icon}    10
    Click Element    ${Settings_Icon}
    Wait Until Element Is Visible    ${Watch_Status_Text}    10
    Click Element    ${Watch_Status_Text}
    Wait Until Element Is Visible    ${Watch_Disconnect_Text}    10
    Click Element    ${Watch_Disconnect_Text}
    Wait Until Element Is Visible    ${Ok_button}    10
    Click Element    ${Ok_button}

    Wait Until Element Is Visible    ${System_Persmission1}    10



#     Sleep    5
#      Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#     Sleep       5
#
#    Wait Until Page Contains Element               ${Sleep_Card}        20
#    Click Element                ${Sleep_Card}
#    Sleep    5
#    Wait Until Page Contains Element     ${Home_Icon}      20
#    Click Element      ${Home_Icon}
#    Sleep    5
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Wait Until Page Contains Element               ${Distance_Card}        20
#    Click Element       ${Distance_Card}
#    Wait Until Page Contains Element     ${Home_Icon}    20
#    Click Element      ${Home_Icon}
#    Sleep    5
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Wait Until Page Contains Element               ${Calrories_Card}       20
#    Click Element      ${Calrories_Card}
#    Sleep    5
#    Wait Until Page Contains Element     ${Home_Icon}    20
#    Click Element      ${Home_Icon}
#    Sleep    5
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
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
#    Wait Until Page Contains Element         ${Home_Icon}       20
#    Click Element      ${Home_Icon}
#    Sleep    5
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#    Wait Until Page Contains Element        ${Temperature_Card}           20
#    Click Element           ${Temperature_Card}
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
#
#    Wait Until Page Contains Element             ${Wellness_Crew_Card}     20
#    Click Element         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Back_arrow}         20
#    Click Element       ${Back_arrow}
#
#
#    Wait Until Page Contains Element           ${Wellness_Crew_Card}        20
#    Scroll            ${Wellness_Crew_Card}      ${My_Buddies_headder}
#
#    Wait Until Page Contains Element   ${Sport_Score_card}       20
#    Click Element        ${Sport_Score_card}
#    Wait Until Page Contains Element     ${Back_arrow}    20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element        ${Build_fitness_plan_card}     20
#    Click Element       ${Build_fitness_plan_card}
#    Wait Until Page Contains Element       ${Fitness_Plan_Back_Button}       20
#    Click Element       ${Fitness_Plan_Back_Button}
#    Sleep    5
#    Scroll     ${Build_fitness_plan_card}         ${Sport_Score_card}
#    Wait Until Page Contains Element        ${Cult_Videos}      20
#    Click Element        ${Cult_Videos}
#    Wait Until Page Contains Element      ${Back_arrow}       20
#    Click Element         ${Back_arrow}




