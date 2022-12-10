*** Settings ***

Resource    ../../src/resources/main.robot

*** Keywords ***

Get JSON
    [Arguments]    ${file_name}

    ${file}         Get File    ${EXECDIR}/data/${file_name}
    ${super_var}    Evaluate    json.loads($file)               json

    [return]    ${super_var}

Buscar dados JSON
    ${conta_json}    Get JSON    conta.json
    # ${CPF}=          Set Variable    ${conta_json["cpf"]}