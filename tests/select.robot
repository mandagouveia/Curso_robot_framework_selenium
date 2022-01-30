*** Settings ***
Resource        base.robot
Test Setup  Nova sessão
Test Teardown   Encerrar sessão

*** Test Cases ***

Select by text and validate by value
    go to                   ${url}/dropdown
    select from list by label       class:avenger-list      Scott Lang
    ${selected}=        get selected list value     class:avenger-list
    Should be Equal     ${selected}     7

Select by value and validate by text
    go to       ${url}/dropdown
    select from list by value       id:dropdown     6
    ${selected}=        Get selected list label         id:dropdown
    Should be equal     ${selected}     Loki


