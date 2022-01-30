*** Settings ***
Resource        base.robot
Test Setup  Nova sessão
Test Teardown   Encerrar sessão


*** Test Cases ***
Should return page title
    title should be     Training Wheels Protocol



