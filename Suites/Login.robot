*** Settings ***
Resource            ../PageObject/HomePage/homePage.robot
Resource            ../PageObject/LoginPage/loginPage.robot

# Suite Setup          Open Flight Application    --di jalankan sekali sebelum execute semua testcase--

#--di jalankan sebelum setiap testcase di execute --
Test Setup           Run Keywords
...                  Open Flight Application 
# ...    AND           Login With Valid Credential 

# Test Setup             Open Flight Application

#di jalankan ketika semua testcase selesai di execute    
Test Teardown        Close Flight Application

*** Variables ***
${VALID_USERNAME}                        support@ngendigital.com
${VALID_PASSWORD}                        abc123
${INVALID_PASSWORD}                      abc123456


*** Test cases ***
User should be able to login with valid credential
    # Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username            username=${VALID_USERNAME}
    Input User Password       password=${VALID_PASSWORD}
    Click Login Button
    Verify Success Login
    # Close Flight Application

User should be able to login with invalid password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username             username=${VALID_USERNAME}
    Input User Password        password=${INVALID_PASSWORD}
    Click Login Button
    Verify Success Login



    
    
    
      
    