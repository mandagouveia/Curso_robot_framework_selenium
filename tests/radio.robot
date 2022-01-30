*** Settings ***
Resource             base.robot
Test Setup           Nova sessão
Test Teardown        Encerrar sessão


*** Test Cases ***
Selecting by id
    go to       ${url}/radios
    select radio button                 movies      cap
    radio button should be set to       movies      cap
    sleep       5

Selecting by value
    go to       ${url}/radios
    select radio button                 movies      guardians
    radio button should be set to       movies      guardians
    sleep                               5
