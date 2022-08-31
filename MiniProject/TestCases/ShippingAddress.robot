*** Settings ***
Resource    ../Conf/Resources.txt
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Test Cases ***

Login
    OuvrirUrl  ${Url}   ${navigateur}
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath.username}  ${email}
    Insert password    ${xpath.pwd}  ${pwd}
    Click ButtonLogin    ${xpath.login_button}
    Click Link    ${xpath_shipping}
    Click Edit    ${xpath_edit}
    Check title    ${xpath_title}

