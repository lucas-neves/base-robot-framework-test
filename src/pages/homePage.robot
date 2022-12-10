***Settings***

Documentation    Objetos da page de Home Page do app


***Variables***

${BTN_PULAR_BIOMETRIA}=         css=[text="Agora não"]
${BTN_OUTROS}=                  xpath=//*[@content-desc="Serviços"]/*[1]
${BTN_NAV_BANNER}=              xpath=//*[@resource-id='navigateSlideButton']
${BTN_ENTENDI_BANNER}=          xpath=//*[@resource-id='gotItButton']


***Keywords***

Navegar pelo banner
   Clicar se o elemento existir                                 ${BTN_PULAR_BIOMETRIA}
   Repeat Keyword    3 times     Clicar no elemento             ${BTN_NAV_BANNER}
   Clicar no elemento                                           ${BTN_ENTENDI_BANNER}   

##### STEPS #####

aciono ícone Outro
    Sleep                          10s
    Wait Until Keyword Succeeds    3x     0.5 sec    Clicar no elemento    ${BTN_OUTROS}






