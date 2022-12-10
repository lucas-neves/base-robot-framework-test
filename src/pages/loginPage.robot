***Settings***

Documentation    Objetos da page de Login


***Variables***

${CAMPO_CPF}=        xpath=//*[@resource-id="cpfInput"]
${CBX_TERMOS}=       xpath=//*[@resource-id="toggle-btn"]
${BTN_CONTINUAR}=    xpath=//*[@resource-id="continueButton"]
${CAMPO_SENHA}=      xpath=//*[@resource-id="passwordInput"]
${BTN_ENTER}=        xpath=//*[@resource-id="enterButton"]


***Keywords***

Logar no app
    [Arguments]           ${VALUE_CPF}        ${VALUE_SENHA}
    Clicar no elemento    ${CAMPO_CPF}
    Preenche o campo      ${CAMPO_CPF}        ${VALUE_CPF}
    Clicar no elemento    ${CBX_TERMOS}
    Clicar no elemento    ${BTN_CONTINUAR}
    Preenche o campo      ${CAMPO_SENHA}      ${VALUE_SENHA}
    Clicar no elemento    ${BTN_ENTER}

Logar no app sem motor de massa
    [Arguments]           ${VALUE_CPF}        ${VALUE_SENHA}
    Clicar no elemento    ${CAMPO_CPF}
    Preenche o campo      ${CAMPO_CPF}        ${VALUE_CPF}
    Clicar no elemento    ${CBX_TERMOS}
    Clicar no elemento    ${BTN_CONTINUAR}
    Preenche o campo      ${CAMPO_SENHA}      ${VALUE_SENHA}
    Clicar no elemento    ${BTN_ENTER}


##### STEPS ######

que estou logado na conta

    Realizar onboarding no app
    Logar no app                       ${conta.user}    ${conta.senha}
    Navegar pelo banner

que estou logado na conta Topaz

    Realizar onboarding no app
    Logar no app                       ${conta_topaz.user}    ${conta_topaz.senha}
    Navegar pelo banner

que estou logado na conta SIPF

    Realizar onboarding no app
    Logar no app                       ${conta_sipf.user}    ${conta_sipf.senha}
    Navegar pelo banner

que estou logado na conta SIPF em atraso

    Realizar onboarding no app
    Logar no app                       ${conta_sipf_atraso.user}    ${conta_sipf_atraso.senha}
    Navegar pelo banner

que estou logado na conta sem motor de massa
    [Arguments]                               ${VALUE_CPF}    ${VALUE_SENHA} 
    Realizar onboarding no app
    Logar no app sem motor de massa    ${VALUE_CPF}    ${VALUE_SENHA}
    Navegar pelo banner