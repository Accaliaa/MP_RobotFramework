*** Variables ***
${Pannier.champs.pannier}   //a[contains(@Class,'wpmenucart-contents')]
${Pannier.ChekProd}     //a[@href='https://practice.automationtesting.in/product/mastering-javascript/']
${Pannier.xpath.shop}   //a[contains(text(),'Shop')]
${Pannier.xpath.produit}    //h3[contains(text(),'Mastering JavaScript')]
${Pannier.xpath.AddToBasket}    //a[@href='/shop/?add-to-cart=165']


*** Keywords ***
Click Link Shop
    [Arguments]  ${Pannier.xpath.shop}
    Wait Until Element Is Visible    ${Pannier.xpath.shop}   10s
    Click Element    ${Pannier.xpath.shop}

Click Link Produit
    [Arguments]  ${Pannier.xpath.produit}
    Wait Until Element Is Visible    ${Pannier.xpath.produit}   10s
    Click Element    ${Pannier.xpath.produit}

Click Link AddToBasket
    [Arguments]  ${Pannier.xpath.AddToBasket}
    Wait Until Element Is Visible    ${Pannier.xpath.AddToBasket}    10s
    Click Element    ${Pannier.xpath.AddToBasket}

Click Link Pannier
    [Arguments]  ${Pannier.champs.pannier}
    Wait Until Element Is Visible    ${Pannier.champs.pannier}    10s
    Click Element    ${Pannier.champs.pannier}

Check Produit
    [Arguments]  ${Pannier.ChekProd}
    Wait Until Element Is Visible    ${Pannier.ChekProd}    10s









