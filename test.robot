***Settings***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas

$(result)= welcome     Amanda
Should Be Equal     $(result)           Olá Amanda, bem vindo ao curso!





