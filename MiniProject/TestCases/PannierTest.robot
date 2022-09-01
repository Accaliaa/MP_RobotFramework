*** Settings ***
Resource    ../Conf/Resources.robot
Test Setup   TestSetUp
Test Teardown   TestTearDown

*** Test Cases ***
TestPanier
    Click MyAccount     ${xpath.myaccount}
    Insert email    ${xpath.username}  ${username}
    Insert password    ${xpath.pwd}  ${pwd}
    Click ButtonLogin    ${xpath.login_button}
    Click Link Shop     ${Pannier.xpath.shop}
    Click Link AddToBasket      ${Pannier.xpath.AddToBasket}
    Click Link Pannier      ${Pannier.champs.pannier}
    Check Produit       ${Pannier.ChekProd}


