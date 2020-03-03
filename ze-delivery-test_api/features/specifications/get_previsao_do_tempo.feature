#language: pt
@obter_previsão_do_tempo
Funcionalidade: Consulta rotas API  

-Eu como usuário
-Quero realizar consulta das previsões meteorológicas.

Cenario: Obter previsão pelo nome da cidade
Dado que eu faça um GET no endpoint para obter previsão pelo nome da cidade
Entao o retorno dele e a previsão por cidade

Cenario: Obter previsão pelo id da cidade
Dado que eu faça um GET no endpoint para obter previsão pelo id da cidade
Entao o retorno dele e a previsão pelo id da cidade

Cenario: Obter previsão por coordenada geografica
Dado que eu faça um GET no endpoint para obter previsão por coordenada geografica
Entao o retorno dele e a previsão por coordenada geografica

Cenario: Obter previsão por CEP
Dado que eu faça um GET no endpoint para obter previsão por CEP
Entao o retorno dele e a previsão por CEP

Cenario: Obter previsão das cidades dentro de uma zona
Dado que eu faça um GET no endpoint para obter previsão por zona
Entao o retorno dele e a previsão por zona

Cenario: Obter previsão das cidades em ciclo
Dado que eu faça um GET no endpoint para obter previsão em um ciclo
Entao o retorno dele e a previsão em um ciclo

Cenario: Obter previsão das de varias cidades
Dado que eu faça um GET no endpoint para obter previsão de varias cidades
Entao o retorno dele e a previsão de varias cidades

Cenario: validar chave invalida
Dado que eu faça um GET no endpoint sem o token
Entao o retorno dele e um erro