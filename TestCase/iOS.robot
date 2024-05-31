*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Lounch_iOS_App
    Open Application           http://localhost:4723/wd/hub       platformName=iOS     udid=00008110-000A09183E52801E       xcodeOrgId=4X573YZ7ZJ       usePrebuiltWDA=true    forceAppLaunch=true    xcodeSigningId=iPhone Developer        platformVersion=16.5.1 (c)     deviceName=iPhone 13 mini      bundleId=com.coveiot.ios.boat.prod      automationName=XCUITest
    Sleep    20
#    Wait Until Page Contains Element         //XCUIElementTypeButton[@name="Get Started"]             20
#    Click Element               //XCUIElementTypeButton[@name="Get Started"]
#    Wait Until Page Contains Element          //XCUIElementTypeButton[@name="Allow While Using App"]       20
#    Click Element               //XCUIElementTypeButton[@name="Allow While Using App"]
#    Wait Until Page Contains Element          	  //XCUIElementTypeButton[@name="Allow"]           20
#    Click Element           	  //XCUIElementTypeButton[@name="Allow"]
    Wait Until Page Contains Element         //XCUIElementTypeApplication[@name="boAt Crest"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField         20
    Click Element            //XCUIElementTypeApplication[@name="boAt Crest"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField
    Input Text      //XCUIElementTypeApplication[@name="boAt Crest"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField          8050904029
    Click Element             //XCUIElementTypeApplication[@name="boAt Crest"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeButton[1]
    Wait Until Page Contains Element       //XCUIElementTypeButton[@name="Send OTP"]     20
    Click Element         //XCUIElementTypeButton[@name="Send OTP"]
    Sleep      20
    Wait Until Page Contains Element          //XCUIElementTypeButton[@name="Verify OTP"]     20
    Click Element               //XCUIElementTypeButton[@name="Verify OTP"]
    Wait Until Page Contains Element          //XCUIElementTypeButton[@name="Continue to pairing"]       20
    Click Element         //XCUIElementTypeButton[@name="Continue to pairing"]
    Wait Until Page Contains Element        //XCUIElementTypeApplication[@name="boAt Crest"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField      20
    Input Text        //XCUIElementTypeApplication[@name="boAt Crest"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField             Cosmos Pro
    Wait Until Page Contains Element        //XCUIElementTypeStaticText[@name="Cosmos Pro"]    20
    Click Element          //XCUIElementTypeStaticText[@name="Cosmos Pro"]
    Wait Until Page Contains Element        //XCUIElementTypeButton[@name="Continue"]     20
    Click Element          //XCUIElementTypeButton[@name="Continue"]

    Close Application

