#Buat segala hal yang berkaitan dengan login

*** Settings ***
Resource                ../base.robot

*** Keywords ***
Input Username
     Wait Until Element Is Visible       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
     Input Text                          locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]      text=support@ngendigital.com

 Input User Password
     Input Text                          locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]            text=abc123

Click Login Button
    Wait Until Element Is Visible        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    Click Element                        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]