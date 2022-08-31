*** Settings ***
Resource    ../Conf/Resources.txt
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Test Cases ***
TestLogin
    OuvrirUrl  ${Url}   ${navigateur}
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath.username}  ${email}
    Insert password    ${xpath.pwd}  ${Wrong.pwd}
    Click ButtonLogin    ${xpath.login_button}
    Check Pwd    ${error}    ${xpath.msg.error}
    Insert password    ${xpath.pwd}  ${pwd}
    Click ButtonLogin    ${xpath.login_button}


