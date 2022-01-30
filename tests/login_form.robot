*** Settings ***
Resource        base.robot
Test Setup  Nova sessão
Test Teardown   Encerrar sessão

*** Test Cases ***
Login successfully
    Go to       ${url}/login
    input text      css:input[name=username]        stark
    input text      css:input[name=password]        jarvis!
    click element   class:btn-login
    page should contain     Olá, Tony Stark. Você acessou a área logada!

Invalid password
    [tags]      login_error
    Go to       ${url}/login
    input text      css:input[name=username]        stark
    input text      css:input[name=password]        abc123
    click element       class:btn=login

    ${message}=     get webelement      id:flash
    Should Contain      ${message.text}     Senha á inválida!

User does not exists
    [tags]      login_user404
    Go to       ${url}/login
    input text      css:input[name=username]        papito
    input text      css:input[name=password]        123456
    click element   class:btn-login

    ${message}=     Get WebElement      id:flash
    Should Contain      ${message.text}     O usuário informado não está cadastrado!
