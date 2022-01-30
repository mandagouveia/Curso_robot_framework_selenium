*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova sessão
    Open Browser            ${url}       chrome
Encerrar sessão
    capture page screenshot
    close browser
