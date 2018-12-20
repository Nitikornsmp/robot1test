*** Settings ***
Resource    D:/workspace/merchantB2B/init.robot

*** Keywords ***
Go to B2B Login Page
    [Documentation]    start website before using a system
    Open Browser    ${BACKEND_URL}    ${chrome}
    Maximize Browser Window
    Wait Until Element Is Visible    ${login_link}
    Click Element    ${login_link}
    Wait Until Element Is Visible    ${msg_welcome}

Verify Login Form
    [Documentation]    to ensure that login form included correct element
    Wait Until Element Is Visible    ${txt_username}
    Wait Until Element Is Visible    ${txt_password}
    Wait Until Element Is Visible    ${chk_remember}
    Wait Until Element Is Visible    ${forgot_link}
    Wait Until Element Is Visible    ${btn_login}
