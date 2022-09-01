*** Settings ***
Resource    ../Conf/Resources.robot
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Test Cases ***

Login
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath.username}  ${username}
    Insert password    ${xpath.pwd}  ${pwd}
    Click ButtonLogin    ${xpath.login_button}
    Click Link    ${xpath_shipping}
    Click Edit    ${xpath_edit}
    Check title    ${xpath_title}
