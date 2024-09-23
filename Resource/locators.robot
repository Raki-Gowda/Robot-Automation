*** Settings ***
Library     AppiumLibrary

*** Variables ***
${Latest_App_Version}      3.6.6(287)       # This verison need to update based on recent app version
#Login and Pair device variable
${Skip_button}             com.coveiot.android.boat:id/textViewSkip
${Enter_Phone_Number}      com.coveiot.android.boat:id/mobileNoEditText
${Terms_Checkbox}          com.coveiot.android.boat:id/rbtn_terms
${Phone_Number_Auto_Fill}       com.google.android.gms:id/phone_number
${Phone_Number_Auto_Fill_Pop_Up_Close}           com.google.android.gms:id/cancel
${OTP_Auto_Fill_Allow}              com.coveiot.android.boat:id/positive_btn
${Auto_Fill_OTP_Popup_title}         com.coveiot.android.boat:id/title
${Submit_button}           com.coveiot.android.boat:id/btn_submit
${OTP_Submitt_button}      com.coveiot.android.boat:id/btn_submit
${Permission_submitt_button}       com.coveiot.android.boat:id/btn_submit
${System_Persmission1}        com.coveiot.android.boat:id/btn_grant_permission
${System_Persmission2}        com.android.permissioncontroller:id/permission_allow_foreground_only_button
${System_Persmission3}        com.android.permissioncontroller:id/permission_allow_button
${System_Persmission4}        com.android.permissioncontroller:id/permission_allow_button
${Search_bar}                 com.coveiot.android.boat:id/etSearchDevice
#${Tap_on_Device}             //android.widget.TextView[@text="Cosmos Pro"]
${Search_Submit_button}       com.coveiot.android.boat:id/btnConfirm
${Search_watch_ID}             //android.widget.TextView[@text="COSMOSPRO_3009"]
${Blueetooth_pair_OK}          android:id/button1
${Get_Started_button}          com.coveiot.android.boat:id/btnGetStarted
${Contiue_HomePage_button}     com.coveiot.android.boat:id/btnContinueToHomepage
${Try_Agian_For_Pair}          //android.widget.Button[@text="Try Again"]
${Search_Again_Pair}            //android.widget.TextView[@text="Search again"]

#Landing page
${Hello_Text}              com.coveiot.android.boat:id/tvHello
${Home_Icon}            //android.widget.TextView[@text="Home"]
${Fitness_Icon}         //android.widget.TextView[@text="Fitness"]
${MyWatch_Icon}         //android.widget.TextView[@text="My Watch"]
${FitCrew_Icon}         //android.widget.TextView[@text="Fit Crew"]
${Settings_Icon}        //android.widget.TextView[@text="Settings"]
${Boat_Logo}             com.coveiot.android.boat:id/imgVLogo
${Blueetooth_Text}       //android.widget.TextView[@text="Bluetooth"]
${Connect_Text}           //android.widget.TextView[@text="Connected"]
${BT_Calltext}           //android.widget.TextView[@text="BT calling"]
${Watch_Image}           com.coveiot.android.boat:id/ivWatch
${Battery_Icon}            com.coveiot.android.boat:id/ivBattery
${Dashboard_Skip_Notification_Settings}             com.coveiot.android.boat:id/negative_tv
${CZ_Dashboard_Disclaimer_OK}            com.coveiot.android.boat:id/btDisclaimerOk
${Weekly_Report_Popup}      com.coveiot.android.boat:id/tvWeekly
${Weekly_Report_Email_Enter}      com.coveiot.android.boat:id/email_edt
${Weekly_Report_Close}        com.coveiot.android.boat:id/ivClose
${Setup_your_Watch_text}         com.coveiot.android.boat:id/tvSetupYourWatchHeader
${Open_watch_face_Card}         //android.widget.TextView[@text="Open watch faces"]
${Manage_Watch_Settings}           //android.widget.TextView[@text="Watch settings"]
${Open_Watch_face_Studio}         //android.widget.TextView[@text="Open watch face studio"]
${Watch_Face_Sudio_Skip_Button}       //android.widget.Button[@text="Skip"]
${Watch_Face_Sudio_BackWord}      //android.widget.Image[@text="icon"]
${Watch_Face_Sudio_Confirm}       //android.widget.Button[@text="Confirm"]

${Profile_pic}             com.coveiot.android.boat:id/imgVProfilePic
${Steps_count}             com.coveiot.android.boat:id/tvStepsCount
${Goal_details}            com.coveiot.android.boat:id/tvGoalDetail
${Top_Features_Headder}      //android.widget.TextView[@text="Top Features"]
${Top_Features_Watchface_Sudio}      //android.widget.TextView[@text="Watchface Studio"]
${Top_Features_boAt_Coins}      //android.widget.TextView[@text="boAt Coins"]
${Top_Features_Challenges}      //android.widget.TextView[@text="Challenges"]
${Top_Features_Fitness Buddies}      //android.widget.TextView[@text="Fitness Buddies"]
${Top_Features_Fitness Report}      //android.widget.TextView[@text="Fitness Report"]

${Fitness_overview_headder}         com.coveiot.android.boat:id/tvFitnessOverviewHeader
${top_features_headers}        //android.widget.TextView[@resource-id="com.coveiot.android.boat:id/tvTopFeaturesTitle" and @text="Top Features"]
${Sleep_Value}             com.coveiot.android.boat:id/tvValue3
${Sleep_Card}                 //android.widget.TextView[@text="Sleep"]
${Distance_Card}             //android.widget.TextView[@text="Distance"]
${Calrories_Card}            //android.widget.TextView[@text="Calories"]
${Fitness_Vitals_Option}        com.coveiot.android.boat:id/tvFitnessVitals
${Heart_rate_Vitals_Card}       //android.widget.TextView[@text="Heart Rate"]
${Spo2_vitals_card}              //android.widget.TextView[@text="SpO2"]
${Stress_Level_Vital_Card}          //android.widget.TextView[@text="Stress Level"]
${Energy_Meter_Card}                //android.widget.TextView[@text="Energy Meter"]
${Temperature_Card}                //android.widget.TextView[@text="Temperature"]
${View_Fitness_Dashboard}          //android.widget.TextView[@text="View fitness dashboard"]
${Track_more_vitals}               //android.widget.TextView[@text="Track more vitals"]
${Boat_Exclusive_headder}             //android.widget.TextView[@text="boAt exclusive"]
${My_Buddies_headder}                //android.widget.TextView[@text="My buddies"]
${700_Activity_Card}              //android.widget.TextView[@text="View Activities"]
${Do_more_headder}              com.coveiot.android.boat:id/tvDoMoreWithYourWatch
${Wellness_Crew_Card}             //android.widget.TextView[@text="Wellness crew setup"]
${Sport_Score_card}                //android.widget.TextView[@text="Sport scores"]
${Cult_fit_headder}                     com.coveiot.android.boat:id/tvCultFitHeader
${Cult_Videos}                       //android.widget.TextView[@text="10+ Videos"]
${Challenges_Headder}                 //android.widget.TextView[@text="Challenges"]
${Best_Offers_headder}                com.coveiot.android.boat:id/tvBestOffers

##Watch Settings page
##Watch Settings
${System_settings_text}         //android.widget.TextView[@text="System settings"]
${Watch_settings_text}         //android.widget.TextView[@text="Watch settings"]
${Connected_text}              //android.widget.TextView[@text="Connected"]
${Watch_Status_Text}          com.coveiot.android.boat:id/watch_status
${Watch_Disconnect_Text}       com.coveiot.android.boat:id/disconnect
${WFS_save}                   //android.widget.Button[@text="Save"]
${WFS_Apply}                 //android.widget.Button[@text="Apply Now"]
${Watch_feature_text}          //android.widget.TextView[@text="Watch features"]

#Custom_reminder
${medicine_reminder}     //android.widget.TextView[@text='Medicine']
${reminder_name}    com.coveiot.android.boat:id/edt_reminder_name
${start_date}     com.coveiot.android.boat:id/tv_start_date
${end_date}       com.coveiot.android.boat:id/tv_end_date


##Watch Features
${Auto_activity_feature}    //android.widget.TextView[@text="Auto activity detection"]
${Auto_HR_feature}         //android.widget.TextView[@text="Auto monitoring heart rate"]
${Auto_Stress&HRV_feature}     //android.widget.TextView[@text="Auto stress & HRV monitoring"]
${Nightly_breathing_feature}    //android.widget.TextView[@text="Nightly breathing rate"]
${Female_Wellness_feature}    //android.widget.TextView[@text="Female wellness tracker"]
${Alarm_feature}    //android.widget.TextView[@text="Alarms"]
${Sedentary_reminder_feature}     //android.widget.TextView[@text="Sedentary reminder"]
${Custom_reminder}         //android.widget.TextView[@text="Custom reminder"]
${Nudges_feature}     //android.widget.TextView[@text="Nudges"]
${qr_tray}        //android.widget.TextView[@text="QR Tray"]
${BT_calling__feature}    //android.widget.TextView[@text="Bluetooth calling"]
${Find_watch_feature}    //android.widget.TextView[@text="Find my watch"]
${Weather_feature}    //android.widget.TextView[@text="Weather settings"]
${Navigation}         //android.widget.TextView[@resource-id="com.coveiot.android.boat:id/settings_name" and @text="Turn-by-turn navigation"]
${Notification_feature}     //android.widget.TextView[@text="Notifications"]
${sos_feature}            //android.widget.TextView[@text="Emergency SOS settings"]

${AAD_Pop_OK_button}        com.coveiot.android.boat:id/btn_ok
${Enbale/Disable_AAD}          //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.Switch
${Save_button}       com.coveiot.android.boat:id/btn_ok
${Ok_button}         com.coveiot.android.boat:id/positive_btn

#Touch ELX features
${TouchELX_Auto_Stress_feature}     //android.widget.TextView[@text="Auto monitoring stress"]
${TouchELX_Auto_SPO2_feature}     //android.widget.TextView[@text="Auto SPO2 measurements"]
${TouchELX_Drink_Water_feature}      //android.widget.TextView[@text="Drink water reminder"]
${TouchELX_Event_Reminder_feature}     //android.widget.TextView[@text="Event reminder"]
${TouchELX_Camera_Control_feature}      //android.widget.TextView[@text="Remote camera control"]
${TouchELX_Shortcuts_feature}     //android.widget.TextView[@text="Shortcuts"]
${TouchELX_Sports_Type_feature}     //android.widget.TextView[@text="Sports type"]
${TouchELX_Add_Reminder_button}         com.coveiot.android.boat:id/btnAddEvent
${TouchELX_Enter_Reminder_Name}        com.coveiot.android.boat:id/etEventName
${TouchELX_Enter_Reminder_DateTime}        com.coveiot.android.boat:id/dateTimeView
${TouchELX_Set_Reminder_Button}          com.coveiot.android.boat:id/btnSetReminder
${TouchELX_Delete_Reminder_Button}           com.coveiot.android.boat:id/deleteImgV
${Save_Event_Reminder_Button}               com.coveiot.android.boat:id/btnSave

${TouchELX_Enable/Disable_Camera}         com.coveiot.android.boat:id/switch_camera
${TouchELX_Shorcut_Steps_Option}      //android.widget.TextView[@text="Steps"]
${TouchELX_Shorcut_Sleep_Option}      //android.widget.TextView[@text="Sleep"]
${TouchELX_Shorcut_Heart_Rate_Option}      //android.widget.TextView[@text="Heart Rate"]
${TouchELX_Shorcut_Weather_Option}      //android.widget.TextView[@text="Weather"]
${TouchELX_Shorcut_Music_Option}      //android.widget.TextView[@text="Music"]

${TouchELX_SportsType_Badmiton}        //android.widget.TextView[@text="Badminton"]
${TouchELX_View-Goals_Option}          com.coveiot.android.boat:id/tv_view_goals
${TouchELX_Steps_Goal}            //android.widget.TextView[@text="Steps goal"]
${TouchELX_Sleep_Goal}            //android.widget.TextView[@text="Sleep goal"]
${TouchELX_Cal_Goal}            //android.widget.TextView[@text="Calories"]
${TouchELX_ExceMin_Goal}            //android.widget.TextView[@text="Exercise Minutes Goal"]
${TouchELX_Walking_Hour_Goal}            //android.widget.TextView[@text="Walking Hours Goal"]
${TouchELX_Steps_Set}               //android.widget.TextView[@text="10000"]
${TouchELX_Steps_Goal_Save_Button}             com.coveiot.android.boat:id/btn_save
${TouchELX_Max_Alarm_Toast}         //android.widget.Toast[@text="Maximum alarms allowed on watch is 10"]


#Auto HR
${Enable/Disable_autoHR}        com.coveiot.android.boat:id/switch_auto_hr
${HR_Save_button}             com.coveiot.android.boat:id/btnSave

#Auto Stress
${Enable/Disbale_stress}         com.coveiot.android.boat:id/switch_reminder
${Stress_Save_button}             com.coveiot.android.boat:id/btnSave


#NBR

${Enable/Disable_Respiratory}      com.coveiot.android.boat:id/switch_respiratory_rate
${NBR_Save}                         com.coveiot.android.boat:id/btnSave

 ##Alarm

${Add_Alarm_Button}       com.coveiot.android.boat:id/add_alarm_btn
${Alarm_Time_OK}           //android.widget.Button[@text="OK"]
${Save_Alarm_Button}       com.coveiot.android.boat:id/save_alarm_btn
${Max_Alarm_Toast}         //android.widget.Toast[@text="Maximum alarms allowed on watch is 5"]
${enable_Quick_reply_toast}        //android.widget.Toast[@text="Enable quick reply to proceed"]



#Sedentary
${Enable/Disable_sedentary}           com.coveiot.android.boat:id/switch_reminder
${Sedentary_Save}                     com.coveiot.android.boat:id/btnSave

#Nudges

${Enable/Disbale_Nudge}        com.coveiot.android.boat:id/switch_nudges
${Nudge_Save}                 	com.coveiot.android.boat:id/btnSave

#Bleetooth Calling
${Back_arrow}              com.coveiot.android.boat:id/toolbar_back_arrow

 #Find My watch

${Find_watch_text}        com.coveiot.android.boat:id/tv_searching_for_watch

#weather
${Enable/Disbale_weather}       com.coveiot.android.boat:id/switch_weather
${Permission_text}        //android.widget.TextView[@text="Permissions"]
${Location_text}    //android.widget.TextView[@text="Location"]
${Allow_always_radion_button}     com.android.permissioncontroller:id/allow_always_radio_button
${Back_option}           //android.widget.ImageButton[@content-desc="Back"]
${Navigate_back}   //android.widget.ImageButton[@content-desc="Navigate up"]

#Notification

${Enbale/Disbale_Call_Notification}        com.coveiot.android.boat:id/call_notification_value
${Call&Other_Permisson_option}                com.android.permissioncontroller:id/permission_allow_button
${Enable_boat_notification}               //android.widget.TextView[@text="boAt Crest"]
${boat_system_permission}              android:id/button1
${Enable/Disable_SMS_notification}            com.coveiot.android.boat:id/sms_notification_value

#SensAI
${SensAI_Feature}                 //android.widget.TextView[@text="SensAI"]
${SnseAI_Skip}              com.coveiot.android.boat:id/tvSkip
${Proceed_to_SesnAI_Button}        com.coveiot.android.boat:id/btnNext
${SensAI_Overall_Stats}             //android.widget.TextView[@text="Overall Stats"]
${SensAI_Details}             //android.widget.TextView[@text="Session details"]
${Batting_text}                  com.coveiot.android.boat:id/tvBatting
${Bowling_text}              com.coveiot.android.boat:id/tvBowling

${feedback_popup_close}      com.coveiot.android.boat:id/iconClose

#Watch Control
${Watch_control_feature}       //android.widget.TextView[@text="Watch control"]
${DND_feature}    com.coveiot.android.boat:id/cl_donot_disturb

${Enable/Disable_DND}     com.coveiot.android.boat:id/dnd_switch
${Quick_Reply_feature}      com.coveiot.android.boat:id/cl_quick_reply
${Enable/Disable_QuickReply}      com.coveiot.android.boat:id/quick_reply_switch
${Quick_reply_Discard_Save}        com.coveiot.android.boat:id/negative_btn
${Done_buttton}           com.coveiot.android.boat:id/tvDone
${SMS_permission}    //android.widget.TextView[@text="Permissions"]
${Call_logs_text}          //android.widget.TextView[@text="Call logs"]
${SMS_Notification_text}             //android.widget.TextView[@text="Notifications"]
${SMS_Text}                       //android.widget.TextView[@text="SMS"]
${Allow_radio_button}           com.android.permissioncontroller:id/allow_radio_button
${Manage_quick_reply_option}            //android.widget.TextView[@text="Manage quick reply"]

${Busy_text}               //android.widget.TextView[@text="I am busy. I will call you later."]
${Driving_text}           //android.widget.TextView[@text="I am driving. I will call you later."]
${Unable_text}           //android.widget.TextView[@text="Unable to talk now."]
${At_work_text}          //android.widget.TextView[@text="At work. I will call you later."]
${Sleeping_text}          //android.widget.TextView[@text="I am sleeping. I will call you later."]
${Lift_view_option}            com.coveiot.android.boat:id/lift_wrist_switch
${Lift_View_Arrow}           //android.widget.TextView[@text="Wakeup gesture"]
${Enable/Disable_Lift_View}      com.coveiot.android.boat:id/switch_reminder
${Battery_Saver_Feature}           //android.widget.TextView[@text="Battery saver"]
${Battery_Saver_Standard_Mode}           //android.widget.TextView[@text="Standard mode"]
${Battery_Saver_Advanced_Mode}           //android.widget.TextView[@text="Advanced"]
${Distnace_unit_text}      com.coveiot.android.boat:id/selected_distance_unit_text
${OK_popup}          com.coveiot.android.boat:id/ok_popup
${Select_HR}         com.coveiot.android.boat:id/selected_hour_text
${About_watch}         //android.widget.TextView[@text="About watch"]
${Firmware_Version}      com.coveiot.android.boat:id/tv_firmware_version
${Watch_Name}         com.coveiot.android.boat:id/tv_model_number
${App_Version}           com.coveiot.android.boat:id/tv_app_version
${User_Manual_Option}       //android.widget.TextView[@text="User manual"]

${Cosmos_pro_watch_name}        //android.widget.TextView[@text="Cosmos Pro"]
${Xtend_pro_watch_name}        //android.widget.TextView[@text="Xtend Pro"]
${Xtend_Sport_watch_name}        //android.widget.TextView[@text="Xtend Sport"]

#Fitness Tab
${Fitness_text}              //android.widget.TextView[@text="Fitness"]
${Fitness_Steps_text}              //android.widget.TextView[@text="Steps"]
${Goal_Achieved_text}             //android.widget.TextView[@text="Goal achieved"]
${Vitals_Details_text}          //android.widget.TextView[@text="Vital details"]
${Steps_Option}                   //android.widget.TextView[@text="Steps"]
${ShareIcon_Fitness}             com.coveiot.android.boat:id/iv_share
${Goal_Insight_headder}          com.coveiot.android.boat:id/tv_goals_insights

   #Days
${Days_tab}          com.coveiot.android.boat:id/tvDay
${Share_Icon}        com.coveiot.android.boat:id/ibShareVitals
${Cove_logo}         com.coveiot.android.boat:id/iv_app_logo
${Powerd_by_covetext}     com.coveiot.android.boat:id/iv_powered_cove
${desclimer_text}          com.coveiot.android.boat:id/disclaimer_info
${Share_button}           com.coveiot.android.boat:id/share_button
${Close_ShareCard}           com.coveiot.android.boat:id/share_close_image

   #Week
${Week_text}             com.coveiot.android.boat:id/tvWeek

   #Month
${Month_text}             com.coveiot.android.boat:id/tvMonth


   #Sleep
${Sleep_text}              //android.widget.TextView[@text="Sleep"]

  #Heart Rate
${Heart_rate_text}      //android.widget.TextView[@text="Heart Rate"]

##SPO2
${SPO2_text}         //android.widget.TextView[@text="SpO2"]

##Stress_Level
${Stress_text}    //android.widget.TextView[@text="Stress Level"]

##HRV
${HRV_text}                 //android.widget.TextView[@text="HRV"]

##NBR
${NBR_Text}            //android.widget.TextView[@text="Nightly breathing rate"]


##Energy_Meter
${Energy_meter_text}        //android.widget.TextView[@text="Energy Meter"]

#Temperature
${Temperature_Text}         //android.widget.TextView[@text="Temperature"]

##MY watch section

#${Watch_name_textin_mywatch_tab}        //android.widget.TextView[@text="Madi's Cosmos Pro"]
${watch_name_text}           com.coveiot.android.boat:id/topHeaderTv         Cosmos Pro
${Cosmos_watchface}       com.coveiot.android.boat:id/wfCosmosPro
${BT_status_text}         com.coveiot.android.boat:id/btStatusTv
${Battery_status_text}     com.coveiot.android.boat:id/batteryStatusTv
${Sync_status_text}         com.coveiot.android.boat:id/syncStatusTv
${BT_call_status_text}    com.coveiot.android.boat:id/btCallStatusTv
${Watch_Settings_option}   com.coveiot.android.boat:id/watchSettingsTv
${watch_face_option}      com.coveiot.android.boat:id/tvChangeYourWatchFace
${Cloud_watch_option}       //android.widget.TextView[@text="Cloud"]
${Default_watch_option}      //android.widget.TextView[@text="Default"]
${Watch_Settings_option1}    //android.widget.TextView[@text="Watch settings"]
${find_my_watch_text}           com.coveiot.android.boat:id/findMyWatchTv
${find_my_watch_text1}           //android.widget.TextView[@text="Find my watch"]
${BT_calling_text_option}      com.coveiot.android.boat:id/bluetoothCallingTv
${Calling_text}              //android.widget.TextView[@text="Bluetooth calling"]
${Activity700_text}           //android.widget.TextView[@text="700+ Activities"]
${CosmosProwatch_feature}     //android.widget.TextView[@text="Cosmos Pro features"]
${Cult_fit_headder}            com.coveiot.android.boat:id/tvCultFitHeader

#Profile
${User_Name}             com.coveiot.android.boat:id/tv_name
${Contact_Number}        //android.widget.TextView[@text="+917829190451"]
${View_Profile_Option}    com.coveiot.android.boat:id/tv_view_profile
${My_Goals_Headder}               com.coveiot.android.boat:id/tv_my_goals
${Steps_Goal_Text}        //android.widget.TextView[@text="Steps"]
${Your_Steps_Goal_Text}        //android.widget.TextView[@text="Your Steps Goal"]
${Sleep_Goal_Text}        //android.widget.TextView[@text="Sleep"]
${Your_Sleep_Goal_Text}        //android.widget.TextView[@text="Your Sleep Goal"]
${My_Achievement_headder}     com.coveiot.android.boat:id/tv_my_achievements
${Badges_Card}        //android.widget.TextView[@text="Badges"]
${Rank_Card}         //android.widget.TextView[@text="Rank"]
${boAt_Coins_Card}        //android.widget.TextView[@text="boAtCoins"]
${Fitness_Buddies_headder}     com.coveiot.android.boat:id/tv_fitness_buddiess
${Activity_Report}             //android.widget.TextView[@text="Activity Report"]
${Fitness_Plan}             //android.widget.TextView[@text="Fitness Plan"]
${My_Fit_Crew}             //android.widget.TextView[@text="My Fit Crew"]
${More_headder}          	com.coveiot.android.boat:id/tv_more
${Fitness_Report}             //android.widget.TextView[@text="Fitness Report"]
${Rate_Us}             //android.widget.TextView[@text="Rate us"]
${Share_App}             //android.widget.TextView[@text="Share this app"]
${Log_out}                com.coveiot.android.boat:id/tv_logout
${Delete_MY_Account}      com.coveiot.android.boat:id/tv_delete_myaccount
${App_version_text}       com.coveiot.android.boat:id/tv_app_version
#My Details
${Profile_Competion_Text}      //android.widget.TextView[@text="Profile completion"]
${Complete_Profile_Option}       com.coveiot.android.boat:id/tvCompleteProfile
${Edit_Name}           com.coveiot.android.boat:id/updateNameEditText
${Edit_Email}         com.coveiot.android.boat:id/updateEmailEditText
${Change_Contact}      com.coveiot.android.boat:id/tvContactChange
${Edit_Gender}        com.coveiot.android.boat:id/updateGenderEditText
${Male_Gender}        com.coveiot.android.boat:id/rbMale
${Female_Gender}      com.coveiot.android.boat:id/rbFemale
${Close_Gender_Popup}       //android.widget.TextView[@text="Select gender"]
${Edit_DOB}                com.coveiot.android.boat:id/updateDateOfBirthEditText
${Edit_Height}             com.coveiot.android.boat:id/tvHeightUnit
${Edit_Weight}             com.coveiot.android.boat:id/tvWeightUnit
${BMI_headder}                     com.coveiot.android.boat:id/tvBmi
${Walk_Stride_Length}        com.coveiot.android.boat:id/tvMyStride
${Run_Stride_Length}         com.coveiot.android.boat:id/tvMyRunStride
${Update_Profile_Button}      com.coveiot.android.boat:id/btn_update_profile
${Profile_Completion_Greeting}         com.coveiot.android.boat:id/congratulations
${Greeting_Close_Option}                 com.coveiot.android.boat:id/btnClose
${My_Achievement_Location}       //android.widget.Button[@text="Use my location"]
${My_Achievement_Card}          com.coveiot.android.boat:id/tv_achievements_text
${Close_Option}                  //android.widget.TextView[@text="Close"]

#Fitness Plan
${Build_Fitness_Plan_Card}                //android.widget.TextView[@text="Build a fitness plan"]
${Fitness_Journey_Headder_Text}           com.coveiot.android.boat:id/tv_fitness_journey
${Ongoing_Fitness_Status_Text}             com.coveiot.android.boat:id/tvWeekPlanStatus
${Subscribe_Plan_Text}                       //android.widget.TextView[@text="Subscribed. Your plan starts tomorrow. Good Luck!"]
${Fitness_Plans_Text}                      com.coveiot.android.boat:id/tv_fitness_plan
${Week_Text}                           com.coveiot.android.boat:id/tvPlanTitle
${Week1_Title_Text}                       //android.widget.TextView[@text="Week 1"]
${Start_Plan_Button}                    com.coveiot.android.boat:id/btn_build_plan
${Proceed_Plan_Button}                       //android.widget.Button[@text="Proceed"]
${Goal_Setup_Screen_Headder}                    //android.widget.TextView[@text="Goal setup"]

${Plan_Setup_Screen_headder}                    //android.widget.TextView[@text="Plan setup"]
${Build_Plan_button}                    //android.widget.Button[@text="Build plan"]
#${Plan_Setup_Screen_Headder}           //android.widget.TextView[@text="Plan setup"]
${WeekPlan4option}                 //android.widget.TextView[@text="4 Week plan"]
${Subscribe_OK_button}                    //android.widget.Button[@text="Ok"]
${Plan_start_tomo_text}              //android.widget.TextView[@text="Your plan Starts tomorrow!"]
${Plan_Duration_text}                com.coveiot.android.boat:id/tv_plan_duration
${Todays_Goal_Text}                  //android.widget.TextView[@text="Today’s Goal"]
${End_Plan_option}                  //android.widget.TextView[@text="End Plan"]
${Unsubscribe_Fitness_Plan_Button}        com.coveiot.android.boat:id/tvUnsubscribePlan
${Unsbcirbe_Fitness_Plan_Confirmation_Button}          com.coveiot.android.boat:id/positive_btn
${Your_BMI_headder}                     //android.widget.TextView[@text="Your BMI Index"]
${BMI_Height_Text}                     //android.widget.TextView[@text="Height"]
${BMI_Age_Text}                     //android.widget.TextView[@text="Age"]
${BMI_Weight_Text}                     //android.widget.TextView[@text="Weight"]
${BMI_Edit_Text}                     //android.widget.TextView[@text="Edit details"]
${Proceed_To_Plan_Setup_Button}                      //android.widget.Button[@text="Proceed to plan setup"]
${Fitness_Plan_Setup_headder}                     //android.widget.TextView[@text="Fitness plan setup"]
${Proceed_To_Select_Plan_Button}                      //android.widget.Button[@text="Proceed to select plan"]
${Choose_Fitness_Plan_Headder}               //android.widget.TextView[@text="Choose fitness plan"]
${Get_Lean_Option}                    //android.widget.TextView[@text="Get lean Recommended"]
${Get_Fit_Option}                    //android.widget.TextView[@text="Get fit"]
${Lose_Weight_Option}                    //android.widget.TextView[@text="Lose weight"]
${Marathon_Option}                    //android.widget.TextView[@text="Marathon"]
${56KM_RUN_Plan_Option}                     //android.widget.TextView[@text="56 km Run plan"]
${Plan_Subscribe_Button}                    //android.widget.Button[@text="Subscribe plan"]
${Subscribe_Plan_Good_Luck_Text}          //android.widget.TextView[@text="Subscribed. Your plan starts tomorrow. Good Luck!"]
${Fitness_Plan_Back_Button}            //android.widget.TextView[@text="Back"]
${Fitness_Plan_Image_Text}            //android.widget.TextView[@text="GET LEAN"]
${Week1_Text}                      //android.widget.TextView[@text="Week 1"]
${Day4_Text}                      //android.widget.TextView[@text="Day 4"]
${Schedule_Text}                      //android.widget.TextView[@text="Schedule"]
${Unsubscribe_Plan_Button}                      //android.widget.Button[@text="Unsubscribe plan"]
${Unsubscribe_Plan_Confirmation_Button}                      //android.widget.TextView[@text="Unsubscribe"]