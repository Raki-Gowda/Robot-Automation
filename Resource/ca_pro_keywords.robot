*** Settings ***
Library      AppiumLibrary
Resource     ../Resource/locators.robot
Resource     ../TestData/Deviceinfo.robot
Resource     ../Resource/keywords.robot


*** Keywords ***

CA_StormPro_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Storm Pro
    Wait Until Page Contains Element       ${StormPro_Watch_In_List}        40
    Click Element      ${StormPro_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       40
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${StormPro_watch_ID}           40
    Click Element        ${StormPro_watch_ID}
    CA_StormPro_Try_Agian_Pairing
    Sleep    3
    Wait Until Page Contains Element    ${Get_Started_button}        40
    Click Element         ${Get_Started_button}
#    Wait Until Page Contains Element    ${Contiue_HomePage_button}      40
#    Click Element     ${Contiue_HomePage_button}


CA_XtendPro_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Xtend Pro
    Wait Until Page Contains Element       ${XtendPro_Watch_In_List}       20
    Click Element      ${XtendPro_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${XtendPro_Watch_ID}           30
    Click Element        ${XtendPro_Watch_ID}
    CA_XtendPro_Try_Agian_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
#    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
#    Click Element     ${Contiue_HomePage_button}


CA_StormProCall_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Storm Pro Call
    Wait Until Page Contains Element       ${StormProCall_Watch_In_List}        20
    Click Element      ${StormProCall_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element     ${StormProCall_watch_ID}           30
    Click Element        ${StormProCall_watch_ID}
    CA_StormProCall_Try_Agian_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
#    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
#    Click Element     ${Contiue_HomePage_button}

CA_Cosmos_Pro_Pairing
    Wait Until Page Contains Element     ${Search_bar}            20
    Input Text        ${Search_bar}         Cosmos Pro
    Wait Until Page Contains Element       ${CosmosPro_Watch_In_List}        20
    Click Element       ${CosmosPro_Watch_In_List}
    Wait Until Page Contains Element    ${Search_Submit_button}       30
    Click Element      ${Search_Submit_button}
    Wait Until Page Contains Element        ${CosmosPro_watch_ID}           30
    Click Element          ${CosmosPro_watch_ID}
    CA_CosmosPro_Try_Again_Pairing
    Sleep    3
    BT_Pair_Pop_UP
    Wait Until Page Contains Element    ${Get_Started_button}        30
    Click Element         ${Get_Started_button}
#    Wait Until Page Contains Element    ${Contiue_HomePage_button}      30
#    Click Element     ${Contiue_HomePage_button}

CA_StormPro_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${StormPro_watch_ID}       20
       Click Element        ${StormPro_watch_ID}
    END

CA_XtendPro_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${XtendPro_Watch_ID}       20
       Click Element        ${XtendPro_Watch_ID}
    END

CA_StormProCall_Try_Agian_Pairing
   ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${StormProCall_watch_ID}       20
       Click Element        ${StormProCall_watch_ID}
    END
CA_CosmosPro_Try_Again_Pairing
    ${ElementVisible}=     Run Keyword And Return Status       Wait Until Page Contains Element        ${Try_Agian_For_Pair}           10
    IF   '${ElementVisible}' == 'True'
       Click Element      ${Try_Agian_For_Pair}
       Wait Until Page Contains Element       ${CosmosPro_watch_ID}      20
       Click Element         ${CosmosPro_watch_ID}
    END

Verify_CA_Features
    Element Should Be Visible     ${Auto_activity_feature}
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


Verify_CA_StormPro_Features
    Element Should Be Visible     ${Auto_activity_feature}
    Element Should Be Visible     ${Auto_HR_feature}
    Element Should Be Visible     ${Auto_Stress&HRV_feature}
    Element Should Be Visible     ${Nightly_breathing_feature}
    Element Should Be Visible     ${Female_Wellness_feature}
    Element Should Be Visible     ${Alarm_feature}
    Element Should Be Visible     ${Sedentary_reminder_feature}
    Scroll          ${Sedentary_reminder_feature}           ${Nightly_breathing_feature}
    Element Should Be Visible     ${Nudges_feature}
    Element Should Be Visible     ${Find_watch_feature}
    Element Should Be Visible     ${Weather_feature}
    Element Should Be Visible     ${Notification_feature}
    Scroll        ${Female_Wellness_feature}                  ${Nudges_feature}


CA_Pro_Landing_Page
  # Dashboard
    Weekly_Report_Subscription
    Dashboard_Skip_Notification_Settings_Feature
    Wait Until Page Contains Element    ${Home_Icon}           30
    Wait Until Page Contains Element     ${Fitness_Icon}       20
    Wait Until Page Contains Element    ${MyWatch_Icon}        20
    Wait Until Page Contains Element     ${FitCrew_Icon}         20
    Wait Until Page Contains Element     ${Settings_Icon}        20
    Wait Until Page Contains Element     ${Boat_Logo}            20
    Wait Until Page Contains Element    ${Blueetooth_Text}       20
    Wait Until Page Contains Element      ${Connect_Text}        20
    Wait Until Page Contains Element     ${BT_Calltext}        20
    Wait Until Page Contains Element     ${Watch_Image}     20
    #Element Should Be Visible     ${Battery_Icon}
    Wait Until Page Contains Element     ${Setup_your_Watch_text}




Verify_AAD_Feature
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

Verify_Auto_HR_Features
    Wait Until Page Contains Element          ${Auto_HR_feature}      20
    Click Element                             ${Auto_HR_feature}
    Wait Until Page Contains Element           ${Enable/Disable_autoHR}     20
    Click Element                              ${Enable/Disable_autoHR}
    HR_Enable_Battery_Alert
    Wait Until Page Contains Element          ${HR_Save_button}       30
    Click Element                             ${HR_Save_button}
    Wait Until Page Contains Element          ${Ok_button}        20
    Click Element                             ${Ok_button}

Verify_Stress&HRV_Feature
    Wait Until Page Contains Element         ${Auto_Stress&HRV_feature}   20
    Click Element                            ${Auto_Stress&HRV_feature}
    Wait Until Page Contains Element             ${Enable/Disbale_stress}       20
    Click Element                               ${Enable/Disbale_stress}
    Sleep    5
    Wait Until Page Contains Element             ${Stress_Save_button}    20
    Click Element                                 ${Stress_Save_button}

    Wait Until Page Contains Element          ${Ok_button}         20
    Click Element                ${Ok_button}

    Sleep    3

    Scroll    ${Sedentary_reminder_feature}    ${Auto_activity_feature}

Verify_NBR_Feature
    Wait Until Page Contains Element         ${Nightly_breathing_feature}      20
    Click Element          ${Nightly_breathing_feature}

    Wait Until Page Contains Element       ${Enable/Disable_Respiratory}          20
    Click Element              ${Enable/Disable_Respiratory}
    Sleep    5
    Wait Until Page Contains Element          ${NBR_Save}                  20
    Click Element       ${NBR_Save}

    Wait Until Page Contains Element          ${Ok_button}             20
    Click Element                ${Ok_button}



Verify_Sedentary_Reminder_Feature
    Wait Until Page Contains Element           ${Sedentary_reminder_feature}    20
    Click Element           ${Sedentary_reminder_feature}

    Wait Until Page Contains Element          ${Enable/Disable_sedentary}      20
    Click Element                ${Enable/Disable_sedentary}
    Sleep    5
    Wait Until Page Contains Element     ${Sedentary_Save}           20
    Click Element                       ${Sedentary_Save}
    Wait Until Page Contains Element         ${Ok_button}      20
    Click Element            ${Ok_button}

Verify_Custom_reminder_feature
    Wait Until Element Is Visible    ${Custom_reminder}    10
    Click Element    ${Custom_reminder}
    Sleep    2
    ${element}=    Run Keyword And Return Status    Wait Until Element Is Visible    com.coveiot.android.boat:id/iv_reminder_delete    10
    IF    '${element}'=='True'
        Click Element    com.coveiot.android.boat:id/iv_reminder_delete
        Wait Until Element Is Visible    com.coveiot.android.boat:id/positive_btn   10
        Click Element    com.coveiot.android.boat:id/positive_btn
        Wait Until Element Is Visible    com.coveiot.android.boat:id/positive_btn    10
        Click Element    com.coveiot.android.boat:id/positive_btn
        Wait Until Element Is Visible    ${Back_arrow}    10
        Click Element    ${Back_arrow}
    ELSE
        Wait Until Element Is Visible    ${medicine_reminder}    10
        Click Element    ${medicine_reminder}
        Wait Until Element Is Visible    ${reminder_name}    10
        Input Text    ${reminder_name}    Test
        Sleep    1
        Click Element    ${start_date}
        Sleep    1
        Click Element    android:id/button1
        Sleep    1
        Click Element    ${end_date}
        Sleep    1
        Click Element    android:id/button1
        Wait Until Element Is Visible    com.coveiot.android.boat:id/cb_select_all   10
        Click Element    com.coveiot.android.boat:id/cb_select_all
        Wait Until Element Is Visible    com.coveiot.android.boat:id/tv_time_info    10
        Click Element    com.coveiot.android.boat:id/tv_time_info
        Sleep    1
        Click Element    android:id/button1
        Sleep    2
        Scroll    com.coveiot.android.boat:id/start_time_title    com.coveiot.android.boat:id/tv_medicine_name_lable
        Wait Until Element Is Visible    com.coveiot.android.boat:id/saveButton    10
        Click Element    com.coveiot.android.boat:id/saveButton
        Wait Until Element Is Visible    com.coveiot.android.boat:id/positive_btn    10
        Click Element    com.coveiot.android.boat:id/positive_btn
        Wait Until Element Is Visible    com.coveiot.android.boat:id/iv_reminder_delete    10
        Click Element    com.coveiot.android.boat:id/iv_reminder_delete
        Wait Until Element Is Visible    com.coveiot.android.boat:id/positive_btn   10
        Click Element    com.coveiot.android.boat:id/positive_btn
        Wait Until Element Is Visible    com.coveiot.android.boat:id/positive_btn    10
        Click Element    com.coveiot.android.boat:id/positive_btn
        Wait Until Element Is Visible    ${Back_arrow}    10
        Click Element    ${Back_arrow}
    END









Verify_QR_Feature
    Wait Until Element Is Visible    ${qr_tray}    10
    Click Element    ${qr_tray}
    ${qr_exists}=   Run Keyword And Return Status    Wait Until Element Is Visible    ${Ok_button}     10
    IF    '${qr_exists}=='True'
         Click Element    ${Ok_button}
         Sleep    6
    END
    ${ele}=    Run Keyword And Return Status    Wait Until Element Is Visible    com.coveiot.android.boat:id/btnGetStarted    10
    IF    '${ele}'=='True'
        Click Element     com.coveiot.android.boat:id/btnGetStarted
    END
    Wait Until Element Is Visible    ${Back_arrow}
    Click Element    ${Back_arrow}
    
Verify_QR_Feature_QA
    Wait Until Element Is Visible    ${qr_tray}    10
    Click Element    ${qr_tray}
    ${ele}=    Run Keyword And Return Status    Wait Until Element Is Visible    com.coveiot.android.boat:id/btnGetStarted    10
    IF    '${ele}'=='True'
        Click Element     com.coveiot.android.boat:id/btnGetStarted
    END
    Wait Until Element Is Visible    ${Back_arrow}
    Click Element    ${Back_arrow}


Verify_Nudges_Feature
    Wait Until Page Contains Element         ${Nudges_feature}      20
#    Scroll           ${Nudges_feature}         ${Auto_HR_feature}
    Wait Until Page Contains Element              ${Nudges_feature}     20
    Click Element           ${Nudges_feature}

    Wait Until Page Contains Element           ${Enable/Disbale_Nudge}         20
    Click Element                    ${Enable/Disbale_Nudge}

    Sleep    3
    Wait Until Page Contains Element     ${Nudge_Save}      20
    Click Element                        ${Nudge_Save}
    Sleep   3
    Wait Until Page Contains Element         ${Ok_button}       20
    Click Element           ${Ok_button}
SOS_feature
    Wait Until Element Is Visible    ${sos_feature}    10
    Click Element    ${sos_feature}
    sleep    3
    ${element}=    Run Keyword And Return Status    Wait Until Element Is Visible    com.android.permissioncontroller:id/permission_allow_button    10
    IF    'com.android.permissioncontroller:id/permission_allow_button'=='True'
         Click Element    com.android.permissioncontroller:id/permission_allow_button
    END
    ${element}=    Run Keyword And Return Status    Wait Until Element Is Visible    com.android.permissioncontroller:id/permission_allow_button    10
    IF    'com.android.permissioncontroller:id/permission_allow_button'=='True'
         Click Element    com.android.permissioncontroller:id/permission_allow_button
    END


Verify_BT_Calling_Feature
    Wait Until Page Contains Element          ${BT_calling__feature}       20
    Click Element           ${BT_calling__feature}

    Wait Until Page Contains Element             ${Back_arrow}        10
    Click Element                        ${Back_arrow}

Verify_Find_My_Watch_Feature
    Wait Until Page Contains Element              ${Find_watch_feature}       20
    Click Element         ${Find_watch_feature}
    Wait Until Page Contains Element               ${Save_button}   20
    Click Element        ${Save_button}
    Element Should Be Visible         ${Find_watch_text}
    Wait Until Page Contains Element               ${Save_button}     20
    Click Element        ${Save_button}
    Wait Until Page Contains Element         ${Back_arrow}     10
    Click Element      ${Back_arrow}

Verify_Weather_Feature
    Wait Until Page Contains Element      ${Weather_feature}   10
    Click Element        ${Weather_feature}
    Wait Until Page Contains Element           ${Enable/Disbale_weather}    10
    Click Element     ${Enable/Disbale_weather}
    Wait Until Page Contains Element       ${Save_button}    10
    Click Element       ${Save_button}
    Wait Until Page Contains Element         ${Ok_button}    10
    Click Element      ${Ok_button}
    ${IsPopUpShowing}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Weather_feature}           10
    IF   '${IsPopUpShowing}' == 'False'
      Wait Until Page Contains Element          ${Ok_button}     10
      Click Element       ${Ok_button}
      Wait Until Page Contains Element          ${Permission_text}   10
      Click Element        ${Permission_text}
      Wait Until Page Contains Element          ${Location_text}   10
      Click Element       ${Location_text}
      Wait Until Page Contains Element       ${Allow_always_radion_button}    10
      Click Element        ${Allow_always_radion_button}
      Wait Until Page Contains Element       ${Navigate_back}   10
      Click Element       ${Navigate_back}
      Wait Until Page Contains Element       ${Navigate_back}  10
      Click Element       ${Navigate_back}
      Wait Until Page Contains Element       ${Navigate_back}   10
      Click Element         ${Navigate_back}
      Wait Until Page Contains Element          ${Enable/Disbale_weather}   10
      Click Element     ${Enable/Disbale_weather}
      Wait Until Page Contains Element       ${Save_button}   10
      Click Element       ${Save_button}
      Wait Until Page Contains Element      ${Ok_button}    10
      Click Element        ${Ok_button}
    END

Verify_Notification_Feature
    Wait Until Page Contains Element          ${Notification_feature}    10
    Click Element         ${Notification_feature}
    Wait Until Page Contains Element           ${Enbale/Disbale_Call_Notification}   20
    Click Element        ${Enbale/Disbale_Call_Notification}
    ${IsPopUpShowing}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Call&Other_Permisson_option}            10
    IF   '${IsPopUpShowing}'=='True'
      #Wait Until Page Contains Element       ${Call&Other_Permisson_option}     20
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
    END
    ${popup}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Enable_boat_notification}             10
    IF  '${popup}'=='True'
#      Wait Until Page Contains Element        ${Enable_boat_notification}        10
      Click Element        ${Enable_boat_notification}
      Wait Until Page Contains Element       ${boat_system_permission}      20
      Click Element             ${boat_system_permission}
      Wait Until Page Contains Element      ${Navigate_back}      20
      Click Element            ${Navigate_back}
      ${IsPopUpShowing}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Call&Other_Permisson_option}            10
       IF   '${IsPopUpShowing}' == 'True'
          #Wait Until Page Contains Element       ${Call&Other_Permisson_option}     20
          Click Element      ${Call&Other_Permisson_option}
          Wait Until Page Contains Element      ${Call&Other_Permisson_option}   20
          Click Element         ${Call&Other_Permisson_option}
          Wait Until Page Contains Element       ${Call&Other_Permisson_option}  20
           Click Element         ${Call&Other_Permisson_option}
       END
    END
    Wait Until Page Contains Element        ${Enable/Disable_SMS_notification}   20
    Click Element          ${Enable/Disable_SMS_notification}
    Wait Until Page Contains Element        ${Save_button}        20
    Click Element            ${Save_button}
    Wait Until Page Contains Element     ${Ok_button}   20
    Click Element          ${Ok_button}
    Wait Until Page Contains Element       ${Back_arrow}    20
    Click Element       ${Back_arrow}

#    Wait Until Page Contains Element       ${Back_arrow}    20
#    Click Element       ${Back_arrow}
#    Wait Until Page Contains Element       ${Quick_reply_Discard_Save}      20
#    Click Element       ${Quick_reply_Discard_Save}
#    Back_Arror_Feature



Watch_Control_Feature
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
    #Wait Until Page Contains Element          ${Xtend_pro_watch_name}      20
    Wait Until Page Contains Element         ${Back_arrow}     20
    Click Element       ${Back_arrow}

CA_Xtend/Storm/StormProCall_My_Watch_Page
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
#  Wait Until Page Contains Element         ${CosmosProwatch_feature}        20

CA_StormPro_Mywatch_page
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
   Wait Until Page Contains Element          ${Watch_Settings_option1}          20
   Click Element           ${Watch_Settings_option1}
   Wait Until Page Contains Element         ${Watch_Settings_option1}        20
   Click Element         ${MyWatch_Icon}
   Sleep          4
   Scroll           ${Watch_Settings_option1}             ${BT_status_text}
   Wait Until Page Contains Element         ${find_my_watch_text}        20
   Click Element                            ${find_my_watch_text}
   Wait Until Page Contains Element         ${find_my_watch_text1}        20
   Wait Until Page Contains Element         ${Back_arrow}      20
   Click Element                            ${Back_arrow}
   Sleep        4
   Scroll              ${find_my_watch_text}            ${watch_face_option}
   Wait Until Page Contains Element        ${Activity700_text}      20
#  Wait Until Page Contains Element         ${CosmosProwatch_feature}        20


CA_Pro_Profile_Page
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep     5
    Wait Until Page Contains Element         ${Profile_pic}      20
    Click Element       ${Profile_pic}
    Wait Until Page Contains Element        ${User_Name}     20
    Wait Until Page Contains Element       ${Contact_Number}      20
    ${Complete_Profile}=     Run Keyword And Return Status       Wait Until Page Contains Element      ${Profile_Competion_Text}          10
    IF   '${Complete_Profile}' == 'True'
       Click Element       ${Complete_Profile_Option}
       Wait Until Page Contains Element     ${Edit_Name}            10
       Input Text     ${Edit_Name}      Madi
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
       Wait Until Page Contains Element        ${Update_Profile_Button}     10
       Click Element    ${Update_Profile_Button}
       Wait Until Page Contains Element       ${Ok_button}      20
       Click Element       ${Ok_button}
       Wait Until Page Contains Element         ${Profile_Completion_Greeting}        20
       Wait Until Page Contains Element       ${Close_Option}           20
       Click Element         ${Close_Option}
    ELSE IF   '${Complete_Profile}' == 'False'
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
       Element Should Be Visible        ${Run_Stride_Length}
       Element Should Be Visible        ${Walk_Stride_Length}
       Wait Until Page Contains Element        ${Back_arrow}       20
       Click Element      ${Back_arrow}
         ${Gender_Save}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Ok_button}           10
          IF   '${Gender_Save}' == 'True'
          Click Element       ${Ok_button}
          Wait Until Page Contains Element      ${Ok_button}       20
          Click Element        ${Ok_button}
          ${Greeting}=     Run Keyword And Return Status       Wait Until Page Contains Element      ${Profile_Completion_Greeting}     20
             IF  '${Greeting}' == 'True'
               Wait Until Page Contains Element        ${Greeting_Close_Option}          20
               Click Element       ${Greeting_Close_Option}
             END
          END
     Wait Until Page Contains Element     ${Back_arrow}      20
     Click Element    ${Back_arrow}
     Wait Until Page Contains Element    ${Profile_pic}      20
     Click Element        ${Profile_pic}
    END

    ${Achivement_Card}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${My_Achievement_Card}          10
    IF  '${Achivement_Card}' == 'True'
       Wait Until Page Contains Element    ${My_Achievement_Card}         20
       Click Element      ${My_Achievement_Card}
       Wait Until Page Contains Element      ${My_Achievement_Location}       20
       Click Element         ${My_Achievement_Location}
       Wait Until Page Contains Element    ${Back_arrow}     20
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
       Scroll    ${Fitness_Plan}         ${Steps_Goal_Text}
       Wait Until Page Contains Element     ${Fitness_Plan}     20
       Click Element     ${Fitness_Plan}
       Wait Until Page Contains Element     ${Back_arrow}      20
       Click Element    ${Back_arrow}
       Wait Until Page Contains Element       ${More_headder}       20
       Scroll     ${More_headder}         ${Fitness_Plan}
       Wait Until Page Contains Element     ${Fitness_Report}       20
       Click Element         ${Fitness_Report}
       Wait Until Page Contains Element     ${Back_arrow}      20
       Click Element    ${Back_arrow}
#       Wait Until Page Contains Element     ${Rate_Us}    20
#       Click Element     ${Rate_Us}
#       Wait Until Page Contains Element     ${Back_arrow}      20
#       Click Element    ${Back_arrow}
       Wait Until Page Contains Element     ${Share_App}      20
       Wait Until Page Contains Element      ${Log_out}      20
       Wait Until Page Contains Element     ${Delete_MY_Account}     20
    #Wait Until Page Contains Element      ${App_version_text}     20
       Wait Until Page Contains Element      ${Back_arrow}       20
       Click Element       ${Back_arrow}
    ELSE IF    '${Achivement_Card}' == 'False'

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
#       Wait Until Page Contains Element     ${Rate_Us}    20
#       Click Element     ${Rate_Us}
#       Wait Until Page Contains Element     ${Back_arrow}      20
#       Click Element    ${Back_arrow}
       Wait Until Page Contains Element     ${Share_App}      20
       Wait Until Page Contains Element      ${Log_out}      20
       Wait Until Page Contains Element     ${Delete_MY_Account}     20
       #Wait Until Page Contains Element      ${App_version_text}     20
       Wait Until Page Contains Element      ${Back_arrow}       20
       Click Element       ${Back_arrow}
    END

CA_Home_Page_Verification
    Wait Until Page Contains Element     ${Home_Icon}    20
    Click Element       ${Home_Icon}
    Sleep    5
    Weekly_Report_Subscription
    Wait Until Page Contains Element       ${BT_Calltext}        20
    Click Element        ${BT_Calltext}
    Wait Until Page Contains Element    ${Back_arrow}        20
    Click Element      ${Back_arrow}
    Wait Until Page Contains Element    ${Open_Watch_face_Studio}    20
    Click Element     ${Open_Watch_face_Studio}
    Wait Until Page Contains Element      ${Watch_Face_Sudio_Skip_Button}     20
    Click Element      ${Watch_Face_Sudio_Skip_Button}
    Wait Until Page Contains Element    ${Watch_Face_Sudio_BackWord}       20
    Click Element     ${Watch_Face_Sudio_BackWord}
    Wait Until Page Contains Element       ${Watch_Face_Sudio_Confirm}     20
    Click Element       ${Watch_Face_Sudio_Confirm}
    Sleep    5

#    ${IsPopUpShowing}=     Run Keyword And Return Status       Wait Until Page Contains Element       ${Top_Features_Headder}           10
#    IF  '${IsPopUpShowing}' == 'True'
#      Click Element       ${Top_Features_boAt_Coins}
#      Wait Until Page Contains Element     ${Back_arrow}     20
#      Click Element    ${Back_arrow}
#      Wait Until Page Contains Element     ${Top_Features_Challenges}       20
#      Click Element       ${Top_Features_Challenges}
#      Wait Until Page Contains Element     ${Back_arrow}     20
#      Click Element    ${Back_arrow}
#      Wait Until Page Contains Element       ${Top_Features_Fitness Buddies}       20
#      Click Element         ${Top_Features_Fitness Buddies}
#      Wait Until Page Contains Element       ${Home_Icon}    20
#      Click Element       ${Home_Icon}
#      Wait Until Page Contains Element        ${Top_Features_Fitness Report}      20
#      Click Element        ${Top_Features_Fitness Report}
#    END

CA_Scroll_Home_Page
    Wait Until Page Contains Element             ${Hello_Text}       20
    ${ele} =   Run Keyword And Return Status    Wait Until Element Is Visible    ${Fitness_overview_headder}    10
    IF    '${ele}'=='False'
         Scroll    ${Top_Features_Headder}    ${Blueetooth_Text}
         Sleep    2
         Scroll    ${Fitness_overview_headder}    ${Top_Features_Headder}
    ELSE
        Scroll      ${Fitness_overview_headder}              ${Hello_Text}
    END
    Sleep    5
    Wait Until Page Contains Element               ${Sleep_Card}        20
    Click Element              ${Sleep_Card}
    Sleep       5
    Click Element      ${Home_Icon}
    Sleep       5
    IF    '${ele}'=='False'
         Scroll    ${Top_Features_Headder}    ${Blueetooth_Text}
         Sleep    2
         Scroll    ${Fitness_overview_headder}    ${Top_Features_Headder}
    ELSE
        Scroll      ${Fitness_overview_headder}              ${Hello_Text}
    END
    Wait Until Element Is Visible   ${Distance_Card}    10
    Click Element             ${Distance_Card}
    Sleep       5
    Click Element      ${Home_Icon}
    Sleep    5
    IF    '${ele}'=='False'
         Scroll    ${Top_Features_Headder}    ${Blueetooth_Text}
         Sleep    2
         Scroll    ${Fitness_overview_headder}    ${Top_Features_Headder}
    ELSE
        Scroll      ${Fitness_overview_headder}              ${Hello_Text}
    END
    Click Element            ${Calrories_Card}
    Sleep       5
    Click Element      ${Home_Icon}

#
#    Wait Until Page Contains Element           ${Blueetooth_Text}       20
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
#     Scroll      ${Fitness_overview_headder}               ${Blueetooth_Text}
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
#
#    Wait Until Page Contains Element           ${Boat_Exclusive_headder}     20
#    Scroll          ${Boat_Exclusive_headder}       ${Spo2_vitals_card}
#
#    Wait Until Page Contains Element          ${700_Activity_Card}      20
#
#    Sleep      4
#    Scroll           ${My_Buddies_headder}             ${700_Activity_Card}
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