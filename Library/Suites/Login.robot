*** Settings ***
Library             AppiumLibrary

*** Variable ***
${Admin_Text}        admin
${Password_Text}     password

${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      14.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity

*** Keywords ***

Open Flight Application
    Open Application       ${REMOTE_URL}    
    ...                    platformName=${PLATFORM_NAME}    
    ...                    platformVersion=${PLATFORM_VERSION}    
    ...                    deviceName=${DEVICE_NAME}    
    ...                    appPackage=${APP_PACKAGE}    
    ...                    appActivity=${APP_ACTIVITY}    

Verify Home Screen Appears
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen 
    Click Element                 locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

 Input Username
     Wait Until Element Is Visible       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
     Input Text                          locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]      text=support@ngendigital.com

 Input Password
     Input Text                    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]       text=abc123

Click Login Button
    Click Element                 locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Success Login
    Element Should Be Visible     locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

# Login with valid credential
#     Input Username
#     Input Password
#     Click Login Button
#     Verify Success Login


*** Test cases ***

User should be able to login with valid credential
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username 
    Input Password
    Click Login Button
    # Verify Success Login
    # Login with valid credential


    
    
    
      
    