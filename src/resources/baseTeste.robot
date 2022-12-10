***Settings***

Resource    ../../src/resources/main.robot

***Variables***

${LOGS}=        ${EXECDIR}/logs


**Keywords***

Abrir app
    Set Appium Timeout        ${APPIUM_TIMEOUT}
    Open Application          ${DEVICE.url}
    ...                       platformName=${DEVICE.platformName}
    ...                       platformVersion=${DEVICE.platformVersion}
    ...                       deviceName=${DEVICE.deviceName}
    ...                       automationName=${DEVICE.automationName}
    ...                       app=${DEVICE.app}
    ...                       udid=${DEVICE.udid}
    ...                       autoDismissAlerts=true
    Iniciar gravacao video

Fechar app
    Tirar Screenshot da tela
    Finalizar gravacao video
    Close Application

Tirar Screenshot da tela
    Capture Page Screenshot    filename=${TEST NAME}.png

Iniciar gravacao video
    Start Screen Recording

Finalizar gravacao video
    Stop Screen Recording    filename=${TEST NAME}






