# PoC - Robot Framework - Android

Prova de Conceito (Poc) usando Robot Framework para automação de uma aplicação Android.


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
$ pip install robotframework
$ robot --version
$ pip install --upgrade robotframework-appiumlibrary
Robot Framework 5.0 (Python 3.9.2 on linux)
```


### Configuração do Emulador:

1 - Instale e configure o Android Studio  
2 - Abra o Android Studio e crie um Dispositivo Virtual: "Pixel 4 API 30"  
3 - Rode o emulador do dispositivo criado  
4 - Instale o "app-debug.apk" da pasta "apk" arrastando-o para o emulador  
5 - Abra o app "Login"  

### Verificando o nome da aplicação:

```
$ adb shell
generic_x86_arm:/ $ dumpsys window | grep -E 'mCurrentFocus'
  mCurrentFocus=Window{1204c85 u0 com.example.vamsi.login/com.example.vamsi.login.MainActivity}
```
