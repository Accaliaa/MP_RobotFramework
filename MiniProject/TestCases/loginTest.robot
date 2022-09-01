*** Settings ***
Resource    ../Conf/Resources.robot
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Test Cases ***

TestRegister
    
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath_email_register}  ${register.email}
    Insert password    ${xpath_password_register}  ${register.pwd}
    Check Strongpwd
    Click Button
    Click SignOut


TestLogin
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath.username}  ${username}
    Insert password    ${xpath.pwd}  ${Wrong.pwd}
    Click ButtonLogin    ${xpath.login_button}
    Check Pwd    ${error}    ${xpath.msg.error}
    Insert password    ${xpath.pwd}  ${pwd}
    Click ButtonLogin    ${xpath.login_button}
