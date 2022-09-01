*** Settings ***
Library           SeleniumLibrary
Library           Process
Library           OperatingSystem
Library           String
Library           Collections
Library           Screenshot
Library           String
Library           DateTime
Library           Dialogs
Library           Screenshot
Library           OperatingSystem
Resource    ../Pages/login.robot
Resource    ../Pages/Shipping.robot
Resource    ../Pages/PannierPage.robot
Resource    ../Pages/logo.robot
Resource    SetUp.robot

*** Variables ***
${Url}      https://practice.automationtesting.in/
${xpath.myaccount}  //a[contains(text(),'My Account')]
${navigateur}       chrome