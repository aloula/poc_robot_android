# Testes de Login

*** Settings ***
Resource    ../keywords/android.robot
Test Timeout  1 minute


*** Test Cases ***
Login
  Login Usuario Valido
  Login Usuario Invalido
  Login Senha Invalida
  Login Invalido
  Fechar App