*** Settings ***
Resource        base.robot
Test Setup  Nova sessão
Test Teardown   Encerrar sessão

*** Variables ***
${check_iron}       css:input[value='iron-man']
${check_thor}       id:thor
${check_panther}        xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Set option using id
    go to                   ${url}/checkboxes
    select checkbox          ${check_thor}
    checkbox should be selected     ${check_thor}
    sleep                             5

Set option using CSS selector
    go to                   ${url}/checkboxes
    select checkbox     ${check_iron}
    checkbox should be selected     ${check_iron}
    sleep                             5

Set option using Xpath
    go to                   ${url}/checkboxes
    select checkbox     ${check_panther}
    checkbox should be selected     ${check_panther}
    sleep                             5
