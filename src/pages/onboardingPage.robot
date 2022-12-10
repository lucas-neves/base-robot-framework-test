***Settings***

Documentation    Objetos da page de onboarding

Resource    ${EXECDIR}/src/resources/main.robot


***Variables***


${BTN_COMECAR}=                     xpath=//*[@resource-id="openAccountButton"]
${BTN_DENY}=                        xpath=//*[contains(@resource-id, "permission_deny")]
${BTN_ALLOW}=                       xpath=//*[contains(@resource-id, "permission_allow")]
${BTN_PERMITIR_DEPOIS}=             xpath=//*[@resource-id="allowLaterButton"]
# ${BTN_ENTRAR}=                      xpath=(//*[@resource-id="enterButton"])[2]
# ${BTN_CONHECA_EMPRESA}=              xpath=(//*[@resource-id="enterButton"])[1]
${BTN_ENTRAR}=                      xpath=//*[contains(@content-desc,"Entrar")]
${BTN_CONHECA_EMPRESA}=              xpath=//*[contains(@content-desc,"Conheça a empresa")]


***Keywords***

Clicar em Conheça a empresa
    Sleep    3s
    Swipe    553    1699    606    642
    Clicar no elemento    ${BTN_COMECAR}

Realizar onboarding no app
    Clicar se o elemento existir     ${BTN_ALLOW}
    Clicar no elemento    ${BTN_ENTRAR}
    Clicar se o elemento existir    ${BTN_PERMITIR_DEPOIS}



