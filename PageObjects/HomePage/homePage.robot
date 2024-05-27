*** Settings ***
Documentation        File ini berisikan tentang segala hal yang berkaitan dengan homePage
Resource             ../base.robot
Variables             homePageLocators.yaml

*** Keywords ***
Verify That The Home Page Appears
    Element Should Be Visible        locator=${verify_home_page}

Click The Sign In Button On The Home Page
    Click Element                    locator=${signIn_button_home_page}

Verify Successful Sign In
    Wait Until Element Is Visible    locator=${success_signIn}
