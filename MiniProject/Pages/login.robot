*** Variables ***
${xpath.username}  //input[@name='username']
${xpath.pwd}  //input[@name='password']
${xpath.login_button}    //input[@name='login']
${xpath.login_page}  //a[text()='Sign out']
${xpath.msg.error}    //Strong[text()='Error']
${register.email}    zaineb.dasr97@gmail.com
${register.pwd}    Groupe5@123...--
${xpath_email_register}    //input[@name="email"]
${xpath_password_register}    //input[@id="reg_password"]
${xpath_message_strong}    //div[contains(text(),"Strong")]
${xpath_bouton_register}    //input[@name="register"]
${username}    mohamedbadreamine
${pwd}  BADRE@amine97
${Wrong.pwd}  BADRE@amine972
${error}    Error
${xpath.signout}    //a[text()='Sign out']

*** Keywords ***
OuvrirUrl
    [Arguments]     ${Url}    ${Browser}
    [Documentation]     ce keyword permet d'ouvrir le site sur le navigateur chrome
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window

Click MyAccount
    [Arguments]  ${xpath.myaccount}
    Wait Until Element Is Visible    ${xpath.myaccount}   10s
    Click Element    ${xpath.myaccount}

Insert email
    [Arguments]  ${xpath.email}  ${email}
    Wait Until Element Is Visible    ${xpath.email}   10s
    Input Text  ${xpath.email}  ${email}

Insert password
    [Arguments]  ${xpath.pwd}  ${pwd}
    Wait Until Element Is Visible    ${xpath.pwd}   10s
    Input Text  ${xpath.pwd}  ${pwd}

Click ButtonLogin
    [Arguments]    ${xpath.Button}
    Wait Until Element Is Visible    ${xpath.Button}   10s
    Click Element    ${xpath.Button}

Check Pwd
    [Arguments]    ${error}    ${xpath.msg.error}
    ${msg}  SeleniumLibrary.Get Text    ${xpath.msg.error}
    Should be equal    ${error}    ${msg}

Check Strongpwd
    Wait Until Element Is Visible    ${xpath_message_strong}    30s

Click Button
    Wait Until Element Is Visible    ${xpath_bouton_register}    10s
    Click Element    ${xpath_bouton_register}

Click SignOut
    Wait Until Element Is Visible    ${xpath.signout}    10s
    Click Element    ${xpath.signout}