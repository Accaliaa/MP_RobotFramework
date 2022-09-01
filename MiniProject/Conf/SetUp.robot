*** Settings ***
Resource    ../Conf/Resources.robot
*** Keywords ***


TestSetUp
    OuvrirUrl  ${Url}   ${navigateur}

TestTearDown
    Run Keyword If Test Failed  Capture Page ScreenShot
    Close Browser
