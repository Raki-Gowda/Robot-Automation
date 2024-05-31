*** Settings ***
Library      AppiumLibrary
Resource     ../Resource/locators.robot

*** Test Cases ***
Login_and_Pair_Device
    Open Application           http://localhost:4723/wd/hub    platformName=Android   deviceName=R9ZRB03L25X    appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash   automationName=Uiautomator2
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
    Sleep       30
    Wait Until Page Contains Element     ${Home_Icon}    20
    Wait Until Page Contains Element      ${Settings_Icon}    20
    Click Element       ${Settings_Icon}
    Sleep     10
    Wait Until Page Contains Element     ${Home_Icon}   20
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
    Wait Until Page Contains Element     ${Manage Watch Settings}     20
    Click Element      ${Manage Watch Settings}
    Wait Until Page Contains Element    ${Home_Icon}    20
    Click Element    ${Home_Icon}

    Sleep    5
    Scroll      ${Steps_count}               ${Blueetooth_Text}
    Sleep       5
    Wait Until Page Contains Element         ${Steps_count}        20
    Click Element       ${Steps_count}
    Wait Until Page Contains Element       ${Home_Icon}      10
    Click Element      ${Home_Icon}
    Sleep    5
    Scroll      ${Steps_count}               ${Blueetooth_Text}
    Sleep    5
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
    Scroll      ${Sleep_Card}           ${Steps_count}
    Sleep    5
    Scroll     ${Fitness_Vitals_Option}            ${Sleep_Card}

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
