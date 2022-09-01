*** Variables ***
${button_myaccount}  //a[contains(.,'My Account')]
${button_logohome}  //img[contains(@title,'Automation Practice Site')]
${myAccount_verification}  //h2[contains(text(),'new arrivals')]
${verifier}  new arrivals


*** Keywords ***
CliquerButtonMyAccount
    [Arguments]     ${button_myaccount}
    [Documentation]     Ce keyword permet de verifier le bouton "myaccount"
    Wait Until Element Is Visible    ${button_myaccount}   10s
    Click Element    ${button_myaccount}

CliquerLogoHome
    [Arguments]     ${button_logohome}
    [Documentation]     Ce keyword permet de verifier le retour a la page home en cliquant sur le logo
    Wait Until Element Is Visible    ${button_logohome}   10s
    Click Element    ${button_logohome}

Verficationhome
    [Arguments]    ${verifier}    ${myAccount_verification}
    [Documentation]     Ce keyword permet d'afficher le home du site practice
    ${msg}  SeleniumLibrary.Get Text    ${myAccount_verification}
    Should Be Equal   ${msg}    ${verifier}