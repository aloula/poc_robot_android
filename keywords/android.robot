# Configurações Android

*** Settings ***
Library         AppiumLibrary


*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${platformName}   Android
${appium:platformVersion}   13
${appium:deviceName}    Pixel 4 API 33
${appium:automationName}    UiAutomator2
${appium:appPackage}    com.example.vamsi.login
${appium:appActivity}   com.example.vamsi.login.MainActivity 
${appium:newCommandTimeout}   3600

${USUARIO_VALIDO}     usuario_valido
${USUARIO_INVALIDO}   usuario invalido  
${EMAIL_VALIDO}       email-valido@teste.com
${EMAIL_INVALIDO}     email-invalido@teste.com
${SENHA_VALIDA}       senha1234
${SENHA_INVALIDA}     senha4567
${TELEFONE}           11 91234-5678  


*** Keywords ***
Abrir App
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  appium:deviceName=${appium:deviceName}  appium:automationName=${appium:automationName}   appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:newCommandTimeout=${appium:newCommandTimeout}
    
Fechar App
    Close Application

Cadastrar Usuario
    Click Element    id=com.example.vamsi.login:id/tvRegister
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etRegName
    Click Element    id=com.example.vamsi.login:id/etRegName
    Input Text    id=com.example.vamsi.login:id/etRegName           ${USUARIO_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etRegPhone          ${TELEFONE}
    Input Text    id=com.example.vamsi.login:id/etRegGmail          ${EMAIL_VALIDO}
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Input Text    id=com.example.vamsi.login:id/etRegPassword       ${SENHA_VALIDA} 
    Click Element    id=com.example.vamsi.login:id/btnRegLogin
    Hide Keyboard
    

Login Usuario Valido
    Wait Until Element Is Visible  id=com.example.vamsi.login:id/btnGotoLogin
    Click Element    id=com.example.vamsi.login:id/btnGotoLogin
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_VALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.TextView
    Go Back
    

Login Usuario Invalido
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_INVALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_VALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin
    #Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.TextView


Login Senha Invalida
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_VALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_INVALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin
    #Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.TextView
    

Login Invalido
    Wait Until Element Is Visible   id=com.example.vamsi.login:id/etLogGmail
    Input Text    id=com.example.vamsi.login:id/etLogGmail          ${EMAIL_INVALIDO}
    Input Text    id=com.example.vamsi.login:id/etLoginPassword     ${SENHA_INVALIDA}
    Click Element    id=com.example.vamsi.login:id/btnLogin
    #Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.TextView
       
