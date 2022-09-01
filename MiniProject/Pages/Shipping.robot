*** Variables ***
${xpath_edit}    //h3[text() = 'Shipping Address']//following-sibling::a
${xpath_shipping}    //a[text()='shipping and billing addresses']
${xpath_title}    //input[@value = 'Save Address']

*** Keywords ***

Click Link
    [Arguments]  ${xpath_shipping}
    Wait Until Element Is Visible    ${xpath_shipping}   5s
    Click Element    ${xpath_shipping}

Click Edit
    [Arguments]  ${xpath_edit}
    Wait Until Element Is Visible    ${xpath_edit}   5s
    Click Element    ${xpath_edit}

Check title
    [Arguments]  ${xpath_title}
    ${msg}  SeleniumLibrary.Get Text    ${xpath_title}
    Should be equal    First Name *    ${msg}
