*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}          https://kitabisa.com
${delay}        2s
${campaign}     xpath://*[@id="horizontal-image-slider-2"]
${donasi}       id:campaign-detail_button_donasi-sekarang
${donasi10k}    xpath://label[normalize-space()='Rp 10.000']
${transferBCA}  xpath://span[normalize-space()='Transfer BCA']
${fullname}     xpath://input[@placeholder='Nama Lengkap']
${email}        xpath://input[@placeholder='Nomor Ponsel atau Email']
${payment}      xpath://button[@id='contribute_button_lanjutkan-pembayaran']
${banner}       xpath://span[@class='style__BannerCloseIcon-sc-106sadj-2 cwehgb']//*[local-name()='svg']
${back}         xpath://img[@class='style__ArrowImg-sc-1qhccvk-3 fxwXJG']
${back2}        xpath://div[@id='plain-header']//*[local-name()='svg']//*[name()='path' and contains(@fill,'currentCol')]



*** Keywords ***
open Chrome
    Open Browser                     ${url}    ${browser}   
    Maximize Browser Window
    Sleep                            ${delay}

click campaign
    Wait Until Element Is Visible    ${campaign}
    Click Element                    ${campaign}

click donasi sekarang
    Wait Until Element Is Visible    ${donasi}
    Click Button                     ${donasi}

click donasi 10k
    Wait Until Element Is Visible    ${donasi10k}
    Click Element                    ${donasi10k}

click transfer BCA
    Wait Until Element Is Visible    ${transferBCA}
    Click Element                    ${transferBCA}

type donatur info
    Wait Until Element Is Visible    ${fullname}
    Input text                       ${fullname}    Indri Hapsari
    Wait Until Element Is Visible    ${email}
    Input text                       ${email}       indrihaps96@gmail.com

click process payment
    Wait Until Element Is Visible    ${payment}
    Click Button                     ${payment}

click x banner
    Wait Until Element Is Visible    ${banner}
    Click Element                    ${banner}

click back
    Wait Until Element Is Visible    ${back}
    Click Element                    ${back}

click back to home
    Wait Until Element Is Visible    ${back2}
    Click Element                    ${back2}

*** Test Cases ***
Start 10k Donation Success
    open Chrome
    click campaign
    click donasi sekarang
    click donasi 10k
    click transfer BCA
    type donatur info
    click process payment
    click x banner
    click back
    click back to home
