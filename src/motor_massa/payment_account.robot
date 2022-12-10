*** Settings ***

Resource    ../../src/resources/main.robot

***Variables***

${URI_PAYMENT_ACCOUNT}=


*** Keywords ***

Criar conta ilimitada
    ${HEADERS}    Create Dictionary
    ...           Content-Type=application/json
    ...           x-api-key=UfICeQf7eY1jB9oKwtqJ6jxu33sdiha1FtJFpWsd
    ...           x-companyautomation=true

    ${RESPOSTA}=    POST                                                                                                                                                                                  https://api-qa.company.com.br/channel-mass-engine-v1/payment-account
    ...             headers=${HEADERS}
    ...             data={"balance":1000,"hasLimit":false,"hasActivatedToken":false,"limit":4999.0,"profileCode":171,"contractFlag":0,"contractDelayedFlag":0,"contractTopazFlag":false,"statusPCO":1}


    Status Should Be    200

    Log    ${RESPOSTA.json()}
    Log    ${RESPOSTA.json()["account"]["accountNumber"]}
    Log    ${RESPOSTA.json()["account"]["documentNumber"]}
    Log    ${RESPOSTA.json()["customer"]["password"]}
    Log    ${RESPOSTA.json()["customer"]["deviceId"]}

    Set Global Variable    ${CPF_CONTA_ILIMITADA}       ${RESPOSTA.json()["account"]["documentNumber"]}
    Set Global Variable    ${SENHA_CONTA_ILIMITADA}     ${RESPOSTA.json()["customer"]["password"]}
    Set Global Variable    ${NUMERO_CONTA_ILIMITADA}    ${RESPOSTA.json()["account"]["accountNumber"]}
    Set Global Variable    ${DEVICE_ID}                 ${RESPOSTA.json()["customer"]["deviceId"]}



##### STEPS ######

que possuo uma conta pagamento com limite de crédito
    Set Global Variable  ${MOTOR_MASSA}
    IF    ${MOTOR_MASSA} == 1
        Log    COM MOTOR DE MASSA.
        Wait Until Keyword Succeeds    3x    0.5 sec    Criar conta ilimitada
        Adicionar Device a conta
    ELSE
        Log    SEM MOTOR DE MASSA.
    END

