*** Settings ***
Resource         rd_resources.robot
Test Setup       Abrir aplicativo
Test Teardown    Fechar aplicativo

*** Test Cases ***

Caso de teste 01 - Cadastro de usuário 
    Abrir aplicativo
    Cadastrar novo usuário
Caso de teste 02 - Realizar login 
    Abrir aplicativo
    Realizar login
Caso de teste 03 - Realizar login com usuário inválido
    Abrir aplicativo
    Realizar login usuário inválido