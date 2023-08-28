*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     13
${DEVICE_NAME}          Pixel 4 API 33
${APP_PACKAGE}          com.example.vamsi.login
${APP_ACTIVITY}         com.example.vamsi.login.MainActivity 
${REMOTE_URL}           http://localhost:4723/wd/hub

${BTN_NEW_USER}         com.example.vamsi.login:id/tvRegister
${CAMPO_NOME}           com.example.vamsi.login:id/etRegName
${CAMPO_FONE}           com.example.vamsi.login:id/etRegPhone
${CAMPO_EMAIL}          com.example.vamsi.login:id/etRegGmail
${CAMPO_SENHA}          com.example.vamsi.login:id/etRegPassword
${BTN_REGISTRAR}        com.example.vamsi.login:id/btnRegLogin
${NOME}                 Carlos Alberto
${FONE}                 11 98084-0865
${EMAIL}                testeRD@teste.com.br
${SENHA}                admin123
${CAMPO_LOGIN_EMAIL}    com.example.vamsi.login:id/etLogGmail
${CAMPO_LOGIN_SENHA}    com.example.vamsi.login:id/etLoginPassword
${BTN_LOGIN}            com.example.vamsi.login:id/btnLogin
${EMAIL_INVALIDO}       testeRDinvalido@teste.com.br

*** Keywords ***
Abrir aplicativo
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2            
    ...                 platformName=${PLATFORM_NAME}  
    ...                 platformVersion=${PLATFORM_VERSION}    
    ...                 deviceName=${DEVICE_NAME}    
    ...                 app=${EXECDIR}/apk/app-debug.apk	
    ...                 udid=emulator-5554
    ...                 appActivity=${APP_ACTIVITY}

Fechar aplicativo
    Close Application

Cadastrar novo usuário
    Wait Until Element Is Visible    ${BTN_NEW_USER}
    Click Element    ${BTN_NEW_USER}
    Wait Until Element Is Visible    ${CAMPO_NOME}
    Input Text    ${CAMPO_NOME}    ${NOME}
    Input Text    ${CAMPO_FONE}    ${FONE}
    Input Text    ${CAMPO_EMAIL}    ${EMAIL}
    Input Text    ${CAMPO_SENHA}    ${SENHA}
    Click Element    ${BTN_REGISTRAR}

Realizar login
    Wait Until Element Is Visible    ${BTN_NEW_USER}
    Input Text    ${CAMPO_LOGIN_EMAIL}   ${EMAIL}
    Input Text    ${CAMPO_LOGIN_SENHA}    ${SENHA}
    Click Element    ${BTN_LOGIN}  
Realizar login usuário inválido
    Wait Until Element Is Visible    ${BTN_NEW_USER}
    Input Text    ${CAMPO_LOGIN_EMAIL}   ${EMAIL_INVALIDO}
    Input Text    ${CAMPO_LOGIN_SENHA}    ${SENHA}
    Click Element    ${BTN_LOGIN} 
     

