#language: pt
@cadastro_usuario
Funcionalidade: Cadastro Usuario  

-Eu como usuário
-Quero realizar cadastro de um novo usuário.

Cenario: Cadastrar Usuário
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo dados para cadastro
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Insira o código de validação"

Cenario: Validar cadastro nome inválido
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "A","Alfredo@gmail.com","Palestra100","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Parece que você esqueceu do sobrenome"

Cenario: Validar cadastro nome em branco
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "","Alfredo@gmail.com","Palestra100","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Nome não pode ficar vazio"

Cenario: Validar cadastro email inválido
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","a","Palestra100","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Eita, esse e-mail não parece correto"

Cenario: Validar cadastro email em branco
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","","Palestra100","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Email não pode ficar vazio"

Cenario: Validar cadastro senha em branco
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Senha não pode ficar vazia"

Cenario: Validar cadastro senha so com letras
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdfg","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Sua senha parece estar fora do padrão"

Cenario: Validar cadastro senha so com numeros
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","12345678","61012626008","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Sua senha parece estar fora do padrão"

Cenario: Validar cadastro cpf em branco
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdf1","","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "CPF não pode ficar vazio"

Cenario: Validar cadastro cpf fora do padrao
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdf1","324","11932432345" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Seu CPF não parece correto"

Cenario: Validar cadastro telefone em branco
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdf1","61012626008","" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Telefone não pode ficar vazio"

Cenario: Validar cadastro telefone inválido
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdf1","61012626008","111238" e "23"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Seu telefone não parece correto"

Cenario: Validar cadastro idade em branco
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdf1","61012626008","11123456784" e ""
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Idade não pode ficar vazia"

Cenario: Validar cadastro idade inválida
Dado confirmo que tenho mais de 18 anos
E clico no botão "Entrar"
E clico no link "Cadastrar"
E clico no botão "Continuar com o e-mail"
E informo os seguites dados para cadastro "Alfredo Dias","alfredo@gmail.com","asdcvdf1","61012626008","11123456784" e "14"
Quando clico no botão "Cadastrar e continuar"
Então sistema apresenta a mensagem "Sua idade deve ser maior que 18 anos"