*** Settings ***
Documentation            File ini berisikan tentang segala hal yang bersifat global
Library                  AppiumLibrary
Library                  OperatingSystem

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case/keyword
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      11.0
${DEVICE_NAME}           CPH2269
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity


*** Keywords ***
Open The Flight Application
    Open Application       ${REMOTE_URL}     
    ...                    platformName=${PLATFORM_NAME}    
    ...                    platformVersion=${PLATFORM_VERSION}    
    ...                    deviceName=${DEVICE_NAME}    
    ...                    appPackage=${APP_PACKAGE}    
    ...                    appActivity=${APP_ACTIVITY}

Close The Flight Application
    Close Application