*** Settings ***
Library             AppiumLibrary

*** Variable ***
${Admin_Text}        admin
${Password_Text}     password

${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      11.0
${DEVICE_NAME}           CPH2269
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity

*** Keywords ***

Open Flight Application
    Open Application       ${REMOTE_URL}    
    ...                    PLATFORM_NAME=${PLATFORM_NAME}    
    ...                    PLATFORM_VERSION=${PLATFORM_VERSION}    
    ...                    DEVICE_NAME=${DEVICE_NAME}    
    ...                    APP_PACKAGE=${APP_PACKAGE}    
    ...                    APP_ACTIVITY=${APP_ACTIVITY}    

Verify Home Screen Appears
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen 
    Click Element                 locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

# Input Username
#     Input Text                    locator=//        text=${Admin_Text}

# Input Password
#     Input Text                    locator=//*[@id="password"]        text=${Password_Text}

# Click Login Button
#     Click Element                 locator=//*[@id="login-btn"]

# Verify Success Login
#     Element Should Be Visible     locator=//*[@id="error-msg"]

# Login with valid credential
#     Input Username
#     Input Password
#     Click Login Button
#     Verify Success Login


*** Test cases ***

# User should be able to login with valid credential

    # Input Username 
    # Input Password
    # Click Login Button
    # Verify Success Login
    # Login with valid credential


    
    
    
      
    