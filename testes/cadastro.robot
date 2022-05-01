# Testes de Cadastro

*** Settings ***
Resource    ../keywords/android.robot
Test Timeout  1 minute


*** Test Cases ***
Cadastro
    Abrir App
    Cadastrar Usuario
