*** Settings ***
Library      AppiumLibrary
Resource     locators.robot
Resource     ../TestData/Deviceinfo.robot
Resource     ../Resource/keywords.robot

*** Keywords ***
Touch_ELX_Lunar_Call_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Lunar Call
    Wait Until Page Contains Element       ${Lunar_Call_Watch_In_List}      20
    Click Element      ${Lunar_Call_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    TouchELX_Lunar_Call_Search_Agian_Pairing
    Wait Until Page Contains Element    ${Lunar_Call_watch_ID}          30
    Click Element       ${Lunar_Call_watch_ID}
    TouchELX_Lunar_Call_Try_Agian_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}

Touch_ELX_Lunar_Connect_Plus_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Lunar Connect Plus
    Wait Until Page Contains Element       ${Lunar_Connect_Plus_Watch_In_List}     20
    Click Element      ${Lunar_Connect_Plus_Watch_In_List}
    Wait Until Page Contains Element     ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    TouchELX_Lunar_Connect_Plus_Search_Agian_Pairing
    Wait Until Page Contains Element    ${Lunar_Connect_Plus_watch_ID}        30
    Click Element      ${Lunar_Connect_Plus_watch_ID}
    TouchELX_Lunar_Connect_Plus_Try_Agian_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}

Touch_ELX_Wave_Connect_Plus_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Wave Connect Plus
    Wait Until Page Contains Element       ${Wave_Connect_Plus_Watch_In_List}     20
    Click Element      ${Wave_Connect_Plus_Watch_In_List}
    Wait Until Page Contains Element     ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    TouchELX_Wave_Connect_Plus_Search_Agian_Pairing
    Wait Until Page Contains Element    ${Wave_Connect_Plus_watch_ID}         30
    Click Element       ${Wave_Connect_Plus_watch_ID}
    TouchELX_Wave_Connect_Plus_Try_Agian_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
    Click Element     ${Contiue_HomePage_button}


Touch_ELX_Storm_Connect_Plus_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Storm Connect Plus
    Wait Until Page Contains Element       ${Storm_Connect_Plus_Watch_In_List}    20
    Click Element      ${Storm_Connect_Plus_Watch_In_List}
    Wait Until Page Contains Element     ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element    ${Storm_Connect_Plus_watch_ID}        30
    Click Element      ${Storm_Connect_Plus_watch_ID}
    TouchELX_Storm_Connect_Plus_Try_Agian_Pairing
    #Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
    ${element_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Contiue_HomePage_button}   20
    IF    '${element_visible}'=='True'
        Click Element    ${Contiue_HomePage_button}
    END



TouchELX_Lunar_Call_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Lunar_Call_watch_ID}       20
       Click Element       ${Lunar_Call_watch_ID}
    END

TouchELX_Lunar_Call_Search_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element       ${Lunar_Call_watch_ID}        20
       Click Element       ${Lunar_Call_watch_ID}
    END


TouchELX_Lunar_Connect_Plus_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Lunar_Connect_Plus_watch_ID}      20
       Click Element       ${Lunar_Connect_Plus_watch_ID}
    END

TouchELX_Lunar_Connect_Plus_Search_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element      ${Lunar_Connect_Plus_watch_ID}        20
       Click Element       ${Lunar_Connect_Plus_watch_ID}
    END

TouchELX_Wave_Connect_Plus_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Wave_Connect_Plus_watch_ID}       20
       Click Element       ${Wave_Connect_Plus_watch_ID}
    END

TouchELX_Wave_Connect_Plus_Search_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element      ${Wave_Connect_Plus_watch_ID}      20
       Click Element       ${Wave_Connect_Plus_watch_ID}
    END


TouchELX_Storm_Connect_Plus_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${Storm_Connect_Plus_watch_ID}      20
       Click Element       ${Storm_Connect_Plus_watch_ID}
    END

TouchELX_Storm_Connect_Plus_Search_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Search_Again_Pair}            20
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Search_Again_Pair}
       Wait Until Page Contains Element      ${Storm_Connect_Plus_watch_ID}     20
       Click Element       ${Storm_Connect_Plus_watch_ID}
    END

TouchELX_Lunar_Call_Landing_Page
  # Dashboard
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element      ${Weekly_Report_Popup}          5
    IF   '${ElementVisible}' == 'True'
       Click Element          ${Weekly_Report_Close}
    END
        ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Dashboard_Skip_Notification_Settings}          5
    IF   '${ElementVisible}' == 'True'
       Click Element         ${Dashboard_Skip_Notification_Settings}
    END
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
    Weekly_Report_Subscription
    Dashboard_Skip_Notification_Settings_Feature

Verify_TouchELX_Lunar_Call_Features
    Wait Until Page Contains Element         ${Auto_HR_feature}      20
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${TouchELX_Auto_Stress_feature}
    Element Should Be Visible     ${TouchELX_Auto_SPO2_feature}
    Element Should Be Visible     ${Female_Wellness_feature}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Element Should Be Visible     ${TouchELX_Drink_Water_feature}
    Element Should Be Visible     ${TouchELX_Event_Reminder_feature}
    Scroll          ${TouchELX_Event_Reminder_feature}          ${Auto_HR_feature}
    Wait Until Page Contains Element           ${BT_calling__feature}      20
    Element Should Be Visible     ${BT_calling__feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Weather_feature}
    Element Should Be Visible     ${Notification_feature}
    Element Should Be Visible     ${TouchELX_Camera_Control_feature}
    Element Should Be Visible     ${TouchELX_Shortcuts_feature}
    Element Should Be Visible     ${TouchELX_Sports_Type_feature}
    Scroll       ${TouchELX_Drink_Water_feature}               ${TouchELX_Shortcuts_feature}


TouchELX_Verify_Auto_Stress_Feature
    Wait Until Page Contains Element         ${TouchELX_Auto_Stress_feature}         20
    Click Element                            ${TouchELX_Auto_Stress_feature}
    Wait Until Page Contains Element             ${Enable/Disbale_stress}       20
    Click Element                               ${Enable/Disbale_stress}

    Wait Until Page Contains Element             ${Stress_Save_button}    20
    Click Element                                 ${Stress_Save_button}

    Wait Until Page Contains Element          ${Ok_button}         20
    Click Element                ${Ok_button}


Verify_TouchELX_Alarm_Feature
    Wait Until Page Contains Element        ${Alarm_feature}        20
    Click Element                   ${Alarm_feature}

    Wait Until Page Contains Element          ${Add_Alarm_Button}     20
    Click Element                  ${Add_Alarm_Button}
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${TouchELX_Max_Alarm_Toast}           10
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


TouchELX_Verify_Auto_SPO2_Feature
    Wait Until Page Contains Element         ${TouchELX_Auto_SPO2_feature}       20
    Click Element                           ${TouchELX_Auto_SPO2_feature}
    Wait Until Page Contains Element             ${Enable/Disbale_stress}       20
    Click Element                               ${Enable/Disbale_stress}

    Wait Until Page Contains Element             ${Stress_Save_button}    20
    Click Element                                 ${Stress_Save_button}

    Wait Until Page Contains Element          ${Ok_button}         20
    Click Element                ${Ok_button}

TouchELX_Verify_Drink_Water_Reminder_Feature
    Wait Until Page Contains Element          ${TouchELX_Drink_Water_feature}        20
    Click Element                            ${TouchELX_Drink_Water_feature}
    Wait Until Page Contains Element             ${Enable/Disbale_stress}       20
    Click Element                               ${Enable/Disbale_stress}

    Wait Until Page Contains Element             ${Stress_Save_button}    20
    Click Element                                 ${Stress_Save_button}

    Wait Until Page Contains Element          ${Ok_button}         20
    Click Element                ${Ok_button}

TouchELX_Verify_Find_My_Watch_Feature
    Wait Until Page Contains Element              ${Find_watch_feature}       20
    Click Element         ${Find_watch_feature}
    Wait Until Page Contains Element               ${Save_button}   20
    Click Element        ${Save_button}
    #Element Should Be Visible         ${Find_watch_text}
#    Wait Until Page Contains Element               ${Save_button}     20
#    Click Element        ${Save_button}
    Sleep    5
    Wait Until Page Contains Element         ${Back_arrow}        10
    Click Element      ${Back_arrow}

TouchELX_Verify_Event_Reminder_Feature
    Wait Until Page Contains Element         ${TouchELX_Event_Reminder_feature}         30
    Click Element                           ${TouchELX_Event_Reminder_feature}
    Wait Until Page Contains Element        ${TouchELX_Add_Reminder_button}         20
    Click Element                           ${TouchELX_Add_Reminder_button}
    Wait Until Page Contains Element        ${TouchELX_Enter_Reminder_Name}        20
    Input Text          ${TouchELX_Enter_Reminder_Name}          Test
    Click Element        ${TouchELX_Enter_Reminder_DateTime}
    Wait Until Page Contains Element       ${OK_popup}      20
    Click Element        ${OK_popup}
    Wait Until Page Contains Element         ${TouchELX_Set_Reminder_Button}      20
    Click Element        ${TouchELX_Set_Reminder_Button}
    Wait Until Page Contains Element        ${Save_Event_Reminder_Button}      20
    Click Element          ${Save_Event_Reminder_Button}
    Wait Until Page Contains Element       ${Ok_button}       20
    Click Element       ${Ok_button}
    Wait Until Page Contains Element      ${TouchELX_Event_Reminder_feature}     20
    Click Element         ${TouchELX_Event_Reminder_feature}
    Wait Until Page Contains Element       ${TouchELX_Delete_Reminder_Button}      20
    Click Element       ${TouchELX_Delete_Reminder_Button}
    Wait Until Page Contains Element      ${Ok_button}      20
    Click Element       ${Ok_button}
    Wait Until Page Contains Element        ${Ok_button}        10
    Click Element        ${Ok_button}

TouchELX_Verify_Remote_Camera_Control_Feature
   Wait Until Page Contains Element     ${TouchELX_Camera_Control_feature}      20
   Click Element      ${TouchELX_Camera_Control_feature}
   Wait Until Page Contains Element       ${TouchELX_Enable/Disable_Camera}         20
   Click Element     ${TouchELX_Enable/Disable_Camera}
   Wait Until Page Contains Element    ${Save_button}       20
   Click Element          ${Save_button}
   Wait Until Page Contains Element      ${Ok_button}     20
   Click Element       ${Ok_button}


TouchELX_Verify_Short_Cut_Feature
   Wait Until Page Contains Element              ${TouchELX_Shortcuts_feature}       20
   Click Element         ${TouchELX_Shortcuts_feature}
   Wait Until Page Contains Element      ${TouchELX_Shorcut_Steps_Option}      20
   Element Should Be Visible           ${TouchELX_Shorcut_Sleep_Option}
   Element Should Be Visible           ${TouchELX_Shorcut_Heart_Rate_Option}
   Element Should Be Visible           ${TouchELX_Shorcut_Weather_Option}
   Element Should Be Visible           ${TouchELX_Shorcut_Music_Option}
   Wait Until Page Contains Element      ${Back_arrow}     20
   Click Element    ${Back_arrow}

TouchELX_Verify_Sport_Type_Feature
   Wait Until Page Contains Element     ${TouchELX_Sports_Type_feature}     20
   Click Element      ${TouchELX_Sports_Type_feature}
   #Wait Until Page Contains Element           ${TouchELX_SportsType_Badmiton}        20
   Wait Until Page Contains Element      ${Back_arrow}     20
   Click Element    ${Back_arrow}
   Wait Until Page Contains Element      ${Back_arrow}     20
   Click Element    ${Back_arrow}

TouchELX_Verify_Notification_Feature
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
#    Wait Until Page Contains Element       ${Back_arrow}    20
#    Click Element       ${Back_arrow}


TouchELX_Lunar_Call_My_Watch_Page_Feature
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



TouchELX_Lunar_Call_Profile_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep     5
    Wait Until Page Contains Element         ${Profile_pic}      20
    Click Element       ${Profile_pic}
    Wait Until Page Contains Element        ${User_Name}     20
    Wait Until Page Contains Element       ${Contact_Number}      20
    Wait Until Page Contains Element     ${View_Profile_Option}     20
    Click Element         ${View_Profile_Option}
    Wait Until Page Contains Element     ${Edit_Name}       20
    Element Should Be Visible      ${Edit_Name}
    Element Should Be Visible      ${Edit_Email}
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
    Page Should Not Contain Element           ${Run_Stride_Length}
    Page Should Not Contain Element       ${Walk_Stride_Length}
    Wait Until Page Contains Element        ${Back_arrow}       20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element       ${My_Goals_Headder}        20
    Scroll    ${My_Goals_Headder}       ${User_Name}
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
    Wait Until Page Contains Element       ${TouchELX_View-Goals_Option}     20
    Click Element       ${TouchELX_View-Goals_Option}
    Wait Until Page Contains Element        ${TouchELX_Steps_Goal}     20
    Click Element        ${TouchELX_Steps_Goal}
    Sleep    3
    ${StepsElement}=     Run Keyword And Return Status       Element Should Be Enabled         ${TouchELX_Steps_Goal_Save_Button}
    IF   '${StepsElement}' == 'True'
       Wait Until Page Contains Element      ${TouchELX_Steps_Goal_Save_Button}       20
       Click Element      ${TouchELX_Steps_Goal_Save_Button}
       Wait Until Page Contains Element       ${Ok_button}       20
       Click Element       ${Ok_button}
    ELSE IF    '${StepsElement}' == 'True'
       Click Element        ${TouchELX_Steps_Set}
       Wait Until Page Contains Element       ${TouchELX_Steps_Goal_Save_Button}       20
       Click Element     ${TouchELX_Steps_Goal_Save_Button}
       Wait Until Page Contains Element       ${Ok_button}       20
       Click Element       ${Ok_button}
    ELSE
       Wait Until Page Contains Element       ${Back_arrow}     10
       Click Element      ${Back_arrow}
    END
    Wait Until Page Contains Element      ${Back_arrow}    20
    Click Element      ${Back_arrow}
    #Scroll     ${Steps_Goal_Text}          ${User_Name}
    Wait Until Page Contains Element      ${My_Achievement_headder}      20
    Scroll      ${My_Achievement_headder}      ${My_Goals_Headder}
    Wait Until Page Contains Element     ${Fitness_Buddies_headder}      20
    Scroll           ${Fitness_Plan}                 ${Fitness_Buddies_headder}
#    Wait Until Page Contains Element       ${My_Goals_Headder}      20
#     Scroll      ${Fitness_Buddies_headder}        ${My_Goals_Headder}
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
#    Wait Until Page Contains Element     ${Rate_Us}    20
#    Click Element     ${Rate_Us}
#    Wait Until Page Contains Element     ${Back_arrow}      20
#    Click Element    ${Back_arrow}
    Wait Until Page Contains Element     ${Share_App}      20
    Wait Until Page Contains Element      ${Log_out}      20
    Wait Until Page Contains Element     ${Delete_MY_Account}     20
    #Wait Until Page Contains Element      ${App_version_text}     20
    Wait Until Page Contains Element      ${Back_arrow}       20
    Click Element       ${Back_arrow}
    Sleep    5

TouchELX_Lunar_Call_Home_Page_Verification
    Wait Until Page Contains Element     ${Home_Icon}      20
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
    Wait Until Page Contains Element    ${Settings_Icon}     20
    Click Element         ${Settings_Icon}
    Wait Until Page Contains Element       ${Watch_Status_Text}     20
    Click Element        ${Watch_Status_Text}
    Wait Until Page Contains Element      ${Watch_Disconnect_Text}    20
    Click Element          ${Watch_Disconnect_Text}
    Wait Until Page Contains Element      ${Ok_button}       20
    Click Element        ${Ok_button}

    Wait Until Element Is Visible    ${System_Persmission1}    10
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Wait Until Page Contains Element               ${Distance_Card}        20
#    Click Element       ${Distance_Card}
#    Wait Until Page Contains Element            ${Home_Icon}      20
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Wait Until Page Contains Element               ${Calrories_Card}       20
#    Click Element      ${Calrories_Card}
#    Wait Until Page Contains Element            ${Home_Icon}      20
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
#    Wait Until Page Contains Element         ${Home_Icon}     20
#    Click Element      ${Home_Icon}
#    Sleep    5
#    Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
#    Sleep    5
#    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}
#    Wait Until Page Contains Element        ${Stress_Level_Vital_Card}         20
#    Click Element           ${Stress_Level_Vital_Card}
#    Wait Until Page Contains Element         ${Home_Icon}      20
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

#    Wait Until Page Contains Element       ${Boat_Exclusive_headder}     20
#    Scroll        ${Boat_Exclusive_headder}      ${Spo2_vitals_card}
#
#    Wait Until Page Contains Element       ${My_Buddies_headder}     20
#    Scroll       ${My_Buddies_headder}      ${Boat_Exclusive_headder}
#
#    Wait Until Page Contains Element             ${Wellness_Crew_Card}     20
#    Click Element         ${Wellness_Crew_Card}
#    Wait Until Page Contains Element        ${Back_arrow}         20
#    Click Element       ${Back_arrow}
#
#    Wait Until Page Contains Element        ${Wellness_Crew_Card}     20
#    Scroll     ${Build_fitness_plan_card}           ${Wellness_Crew_Card}
#
#    Wait Until Page Contains Element        ${Build_fitness_plan_card}     20
#    Click Element       ${Build_fitness_plan_card}
#    Wait Until Page Contains Element       ${Fitness_Plan_Back_Button}     20
#    Click Element      ${Fitness_Plan_Back_Button}
#
#    Wait Until Page Contains Element        ${Cult_Videos}      20
#    Click Element        ${Cult_Videos}
#    Wait Until Page Contains Element      ${Back_arrow}       20
#    Click Element         ${Back_arrow}