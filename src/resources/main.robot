*** Settings ***

#### Library ####

Library    AppiumLibrary
Library    OperatingSystem
Library    BuiltIn
Library    String
Library    RequestsLibrary
Library    Collections
Library    String

#### Pages ####

Resource    ../../src/resources/basePage.robot
Resource    ../../src/resources/baseTeste.robot
Resource    ../../src/resources/helper.robot

Resource    ../../src/pages/onboardingPage.robot
Resource    ../../src/pages/loginPage.robot
Resource    ../../src/pages/homePage.robot

## Motor de Massa ##

Resource    ../../src/motor_massa/payment_account.robot
Resource    ../../src/motor_massa/add-device-to-account.robot







