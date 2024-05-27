*** Settings ***
Documentation        File ini berisikan tentang segala hal yang berkaitan dengan loginPage
Library              ../../Library/randomUsername.py
Resource             ../base.robot
Variables            loginPageLocators.yaml

*** Keywords ***
Input A Valid Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}    text=${username}

Input A Valid Password
    [Arguments]                      ${password}            
    Input Text                       locator=${password_input}    text=${password}

Click The Sign In Button On The Login Page
    Click Element                    locator=${signIn_button_login_page}

Generate Random Username Test
    ${random_username}=    Generate Random Username
    Log    Random Username: ${random_username}

Input An Invalid Username
    [Arguments]                      ${username}
    Log    Inputting Username: ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}    text=${username}

Verify An Invalid Username
    Page Should Contain Text         text=Invalid username/password

Input An Empty Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}    text=${username}

Verify An Empty Username
    Page Should Contain Text         text=Invalid username/password