*** Settings ***
Library        AppiumLibrary
Resource     ../Resource/locators.robot



*** Test Cases ***
Wellness
    Open Application           http://localhost:4723/wd/hub    platformName=Android      deviceName=RZCTC0W9DNN     appPackage=com.coveiot.android.boat       appActivity=com.coveiot.android.leonardo.onboarding.splash.activities.ActivitySplash      automationName=Uiautomator2    noReset=true    fullReset=false
    Sleep      30
    Wait Until Element Is Visible      ${wellness_icon}      10
    Click Element        ${wellness_icon}
    Sleep    5
      @{firstFinger}  create list  ${197} ${700}
      Tap with Positions  ${1000}  @{firstFinger}


      Element Should Be Visible     ${wellness_moment}
      Element Should Be Visible     ${wellness_vitals}
      Element Should Be Visible    ${wellness_restore}
#     Steps
    sleep    3
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}
    Sleep    1
    Click Element    ${Week_Text}
    Sleep    1
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}
     Sleep    1
    Click Element    ${Month_text}
    Sleep    1
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}

#    activities
     Click Element    ${activities_moment_wellness}

#     vitalss
#HR
     Click Element    ${wellness_vitals}
      sleep    3
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}
    Sleep    1
    Click Element    ${Week_Text}
    Sleep    1
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}
     Sleep    1
    Click Element    ${Month_text}
    Sleep    1
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}


#    spo2
     Click Element    ${SPO2_text}
     Click Element     ${Share_Icon}
      Sleep    1
      Click Element    ${Close_ShareCard}
#     energy meter
     Click Element    ${Energy_Meter_Card}
     Click Element     ${Share_Icon}
     Sleep    1
     Click Element    ${Close_ShareCard}


#     restore
     Click Element    ${wellness_restore}
    Sleep    2
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}
    Sleep    3
    Click Element    ${Week_Text}
    Sleep    1
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}
     Sleep    3
    Click Element    ${Month_text}
    Sleep    1
    Click Element     ${Share_Icon}
    Sleep    1
    Click Element    ${Close_ShareCard}