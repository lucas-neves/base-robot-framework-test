*** Settings ***

Resource    ../../src/resources/main.robot

***Variables***

${URI_DEVICE_ACCOUNT}


*** Keywords ***

Adicionar Device a conta
    ${HEADERS}    Create Dictionary
    ...           Content-Type=application/json
    ...           x-api-key=UfICeQf7eY1jB9oKwtqJ6jxu33sdiha1FtJFpWsd

    ${RESPOSTA}=    POST                                                                                                             https://api-qa.company.com.br/channel-mass-engine-v1/add-device-to-account    
    ...             headers=${HEADERS}
    ...             data={"accountNumber": "${NUMERO_CONTA_ILIMITADA}","deviceId": "${DEVICE_ID}","deviceName": "Asus Zenfone 6"}


    Status Should Be    200
