***Settings***

Resource    ../../src/resources/main.robot

***Variables***

${ELEMENTO}    xpath=//android.view.View

**Keywords***

Deslizar tela para cima
    [Arguments]                         ${ELEMENT}=${ELEMENTO}
    Wait Until Page Contains Element    ${ELEMENT}
    ${element_size}=                    Get Element Size        ${ELEMENT}
    ${element_location}=                Get Element Location    ${ELEMENT}
    ${start_x}=                         Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=                         Evaluate                ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=                           Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=                           Evaluate                ${element_location['y']} + (${element_size['height']} * 0.9)
    Swipe                               ${start_x}              ${start_y}                                                      ${end_x}    ${end_y}    500

Deslizar tela para baixo
    [Arguments]                         ${ELEMENT}=${ELEMENTO}
    Wait Until Page Contains Element    ${ELEMENT}
    ${element_size}=                    Get Element Size        ${ELEMENT}
    ${element_location}=                Get Element Location    ${ELEMENT}
    ${start_x}=                         Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=                         Evaluate                ${element_location['y']} + (${element_size['height']} * 0.9)
    ${end_x}=                           Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=                           Evaluate                ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe                               ${start_x}              ${start_y}                                                      ${end_x}    ${end_y}    500

Verificar se a tela contem o texto
    [Arguments]                 ${TEXT}
    Wait Until Page Contains    ${TEXT}
    Page Should Contain Text    ${TEXT}

Clicar no elemento
    [Arguments]                      ${ELEMENT}
    Wait Until Element Is Visible    ${ELEMENT}
    Click Element                    ${ELEMENT}

Clicar no Texto
    [Arguments]                      ${TEXT}
    Wait Until Element Is Visible    ${TEXT}
    Click Text                       ${TEXT}

Preenche o campo
    [Arguments]                      ${ELEMENT}    ${VALUE}
    Wait Until Element Is Visible    ${ELEMENT}
    Clear Text                       ${ELEMENT}
    Input Text                       ${ELEMENT}    ${VALUE}

Esperar ate elemento estar visivel
    [Arguments]                      ${ELEMENT}
    Wait Until Element Is Visible    ${ELEMENT}

A página deve conter o elemento
    [Arguments]                      ${ELEMENT}
    Wait Until Element Is Visible    ${ELEMENT}
    Page Should Contain Element      ${ELEMENT}

A página deve conter o texto
    [Arguments]                 ${VALUE}
    Wait Until Page Contains    ${VALUE}
    Page Should Contain Text    ${VALUE}

Clicar se o elemento existir
    [Arguments]                      ${ELEMENT}
    Sleep            10s
    ${present}=      Run Keyword And Return Status    Element Should Be Visible   ${ELEMENT}
    Run Keyword If   ${present}                       Clicar no elemento          ${ELEMENT}
