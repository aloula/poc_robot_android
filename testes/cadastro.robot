# Testes de Cadastro

*** Settings ***
Resource        ../keywords/android.robot
Test Setup      Abrir App
Test Teardown   Fechar App
Test Timeout    1 minute


*** Test Cases ***
Cadastro
    Cadastrar Usuario
    Login Usuario Valido
    Login Usuario Invalido
    Login Senha Invalida
    Login Invalido
