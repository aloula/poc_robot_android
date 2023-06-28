# PoC - Robot Framework - Android

Prova de Conceito (Poc) usando Robot Framework para automação de uma aplicação Android.

[Vídeo](https://youtube.com/shorts/WjsmhzAuNKk) do teste rodando.


### Pré-requisitos:

- Android Studio 2021+: https://developer.android.com/studio
- Python 3.8+: https://www.python.org/downloads/
- Appium 1.22+: https://appium.io/
- Appium-Inspector 2022.+: https://github.com/appium/appium-inspector/releases
- Robot Framework 5+ (instalado no passo 3): https://robotframework.org/#getting-started


### Instalação:

1 - Instale os pré-requisitos mencionados acima exceto o Robot Framework

2 - Criar e ativar um ambiente virtual do Python:
```
$ python -m venv .venv
$ source .venv/bin/activate
```

3 - Instalar Robot Framework e lib do appium:
```
$ pip install --upgrade pip
$ pip install Appium-Python-Client
$ pip install robotframework
$ robot --version
$ pip install --upgrade robotframework-appiumlibrary
Robot Framework 6.1 (Python 3.10.6 on linux)
```


### Configuração do Emulador:

1 - Instale e configure o Android Studio  
2 - Abra o Android Studio e crie um Dispositivo Virtual: "Pixel 4 API 33"  
3 - Rode o emulador do dispositivo criado  
4 - Instale o "app-debug.apk" da pasta "apk" arrastando-o para o emulador  
5 - Abra o app "Login"  

### Verificando o nome da aplicação:

```
$ adb shell
generic_x86_arm:/ $ dumpsys window | grep -E 'mCurrentFocus'
  mCurrentFocus=Window{1204c85 u0 com.example.vamsi.login/com.example.vamsi.login.MainActivity}
```

# Executando os testes com Robot

1 - Ajuste as configurações de conexão do Appium no [arquivo](keywords/android.robot), caso necessário

2 - Execute o Appium Server:
```
$ ./run-appium.sh
```

3 - Abra o emulador

4 - Abra outro terminal e execute o teste:
```
$ source .venv/bin/activate
$ robot -d logs testes/*
```

5 - Os relatórios são salvos na pasta "logs"  