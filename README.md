# Descrição da lib

lib base para construção de Automação de Testes Mobile com Robot Framework + Appium 



### Tecnologias

Você vai precisar instalar as seguintes ferramentas e tecnologias

- [Robot Framework (Python Version)](https://robotframework.org/ )
- [Appium](https://appium.io/ )
- [Python](https://www.python.org/downloads/ )
- [Java](https://www.oracle.com/java/technologies/downloads/ )
- [Node.js](https://nodejs.org/en/)
- [Android Studio](https://developer.android.com/studio#downloads )

### Pré-Requisitos

1. Instalar as dependencias npm do projeto

  ```
  npm install
  ```
  Caso apresentar o problema:
   ```
  npm ERR! code E401
  npm ERR! Unable to authenticate, your authentication token seems to be invalid.
   ```
   Executar o comando:
   ```
   npx vsts-npm-auth -config .npmrc
   ```

2. Instalação das dependencias pip do projeto base

  ```
  npm run setup
  ```
### Pluguins:

  Instalar os seguintes plugins:

  * Robot Framework Intellisense

  * Robocorp Code


Abaixo está uma lista dos arquivos por diretório.

|               Arquivos  | Arquivos nos diretorio                                                                  |
| ----------------------: | -----------------------------------------------------------------------------          
|
|      `motor_massa` | **exemploPage.robot** Arquivos de requests para criação de massa de dados para os testes.    |
|             `pages`     | **exemploPage.robot** Pages padrão como 'Login' e 'Onboarding' com Keywords para serem utilizadas como base na contrução dos testes|
|             `resources` | **BasePage, BaseTeste, Helpers** Recursos com keywords auxiliares para construção dos testes.                 |
||


# Como instalar esta lib

Após a publicação da lib pela esteira, basta no projeto destino realizar o install: 


npm install --save @company/base-robot-mobile-automation-test


# Documentação padrão e esteira

Veja a documentação completa e atualizada do archetype de library aqui: https://backstage.k8s-corp.company.net.br/docs/default/Component/cac-docs/hefesto/archetypes/nodejs/library/

(Necessário estar conectado na VPN)
