*** Settings ***
Resource                         ../PageObjects/HomePage/homePage.robot
Resource                         ../PageObjects/LoginPage/loginPage.robot
Test Setup                       Run Keywords
...                              Open The Flight Application
...    AND                       Verify That The Home Page Appears
...    AND                       Click The Sign In Button On The Home Page
Test Teardown                    Close The Flight Application

*** Variables ***
${VALID_USERNAME}                support@ngendigital.com   
${EMPTY_USERNAME}                
${VALID_PASSWORD}                abc123 

*** Test Cases ***
# untuk menuliskan test cases
User Should Be Able To Sign In With Valid Credentials
    Input A Valid Username        username=${VALID_USERNAME} 
    Input A Valid Password        password=${VALID_PASSWORD}
    Click The Sign In Button On The Login Page
    Verify Successful Sign In

User Should Be Unable To Sign In With An Invalid Username
    ${random_username}=    Generate Random Username
    Log    Using Random Username: ${random_username}
    Input An Invalid Username     username=${random_username}
    Input A Valid Password        password=${VALID_PASSWORD}
    Click The Sign In Button On The Login Page
    Verify An Invalid Username    

User Should Be Unable To Sign In With An Empty Username
    Input An Empty Username       username=${EMPTY_USERNAME}
    Input A Valid Password        password=${VALID_PASSWORD}
    Click The Sign In Button On The Login Page
    Verify An Empty Username      