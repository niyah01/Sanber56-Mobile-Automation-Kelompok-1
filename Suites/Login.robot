*** Settings ***
Resource            ../PageObject/HomePage/homePage.robot
Resource            ../PageObject/LoginPage/loginPage.robot

# Suite Setup          Open Flight Application    --di jalankan sekali sebelum execute semua testcase--
Test Setup           Open Flight Application       #di jalankan sebelum setiap testcase di execute
Test Teardown        Close Flight Application      #di jalankan ketika semua testcase selesai di execute 


*** Test cases ***
User should be able to login with valid credential
    #Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username 
    Input User Password
    Click Login Button
    Verify Success Login
    #Close Flight Application

User should be able to login with valid2 credential
    #Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username 
    Input User Password
    Click Login Button
    Verify Success Login
    #Close Flight Application


    
    
    
      
    