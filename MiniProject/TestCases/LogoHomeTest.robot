*** Settings ***
Resource    ../Conf/Resources.robot
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Test Cases ***
myAcount
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath.username}  ${username}
    Insert password    ${xpath.pwd}  ${pwd}
    Click ButtonLogin    ${xpath.login_button}
    CliquerButtonMyAccount  ${button_myaccount}
    CliquerLogoHome  ${button_logohome}
    Verficationhome    ${verifier}    ${myAccount_verification}