*** Settings ***
Resource    D:/workspace/merchantB2B/init.robot

*** Keywords ***
Login to MerchantB2B
    [Documentation]    to ensure that user is able to login as platform admin
    [Tags]    login
    [Arguments]    ${username}    ${password}
    Go to B2B Login Page
    Verify Login Form
    Fills in Username and Password    ${username}    ${password}
    Click Element    ${btn_login}
    Wait Until Element Is Visible    
Fills in Username and Password
    [Arguments]    ${username}    ${password}
    Input text    ${txt_username}    ${username}
    Input text    ${txt_password}    ${password}

Wrong Username Msg
