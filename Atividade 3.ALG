Algoritmo "ATIVIDADE 3"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   :
// Descri��o   : ESTE PROGRAMA CALCULA A QUANTIDADE E M�DIA DE ACIDENTES
// Autor(a)    : Jean de Santana Pereira
// Data atual  : 18/05/2019
Var
// Se��o de Declara��es das vari�veis
cidade_digitada, acidentes_digitados, veiculos_digitado: inteiro
inserir_novo: inteiro
soma_veiculos, soma_cidades, soma_acidentes: inteiro

indice_menor_cidade, indice_maior_cidade: inteiro
codigo_menor_cidade, codigo_maior_cidade: inteiro
soma_acidentes_menor_2000: inteiro
numero_cidades_veiculos_menor_2000: inteiro
media_veiculos, media_acidentes_menor_2000: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
inserir_novo<-1
enquanto (inserir_novo = 1)  faca
   ESCREVAl("DIGITE O N�MERO DA CIDADE: ")
   LEIA(cidade_digitada)
   limpatela
   ESCREVAl("DIGITE A QUANTIDADE DE VE�CULOS: ")
   LEIA(veiculos_digitado)
   limpatela
   ESCREVAl("DIGITE O N�MERO DE ACIDENTES: ")
   LEIA(acidentes_digitados)
   limpatela

   // TESTA O N�MERO DE ACIDENTES E SE FOI O MENOR DIGITADO
   se(acidentes_digitados < indice_menor_cidade) ou (indice_menor_cidade=0) entao
      // SALVA O N�MERO DA CIDADE DIGITADA COMO O MENOR INDICE DE ACIDENTES
      codigo_menor_cidade <- cidade_digitada
      // SALVA A QUANTIDADE DE ACIDENTES DO MENOR INDICE
      indice_menor_cidade <- acidentes_digitados
   fimse
   // TESTA O N�MERO DE ACIDENTES E SE FOI O MAIOR DIGITADO
   se (acidentes_digitados > indice_maior_cidade) ou (indice_maior_cidade=0) entao
      // SALVA O N�MERO DA CIDADE DIGITADA COMO O MAIOR INDICE DE ACIDENTES
      codigo_maior_cidade <- cidade_digitada
      // SALVA A QUANTIDADE DE ACIDENTES DO MAIOR INDICE
      indice_maior_cidade <- acidentes_digitados
   fimse
   // TESTA SE O N�MERO DE VE�CULOS DIGITADOS FOI MENOR QUE 2000
   se (veiculos_digitado <2000)entao
      //SALVA QUANTIDADE DE ACIDENTES NAS CIDADES COM INDICE MENOR QUE 2000
      soma_acidentes_menor_2000 <- (soma_acidentes_menor_2000+acidentes_digitados)
      //SALVA O N�MERO DE VEICULOS COM �NDICE MENOR QUE 2000
      numero_cidades_veiculos_menor_2000 <-(numero_cidades_veiculos_menor_2000 + 1)
   fimse

   // SOMA QUANTOS VE�CULOS FORAM DIGITADOS
   soma_veiculos <- (soma_veiculos + veiculos_digitado)
   // SOMA QUANTAS CIDADES FORAM DIGITADAS
   soma_cidades <- (soma_cidades + 1)
   // SOMA A QUANTIDADE DE ACIDENTES
   soma_acidentes <- (soma_acidentes + acidentes_digitados)
   //MEDIA DE VEICULOS DE TODAS CIDADES
   media_veiculos <- (soma_veiculos /soma_cidades)
   //MEDIA DE ACIDENDES NAS CIDADES COM INDICE MENOR QUE 2000
   media_acidentes_menor_2000 <- (soma_acidentes_menor_2000 / numero_cidades_veiculos_menor_2000)

   limpatela
   ESCREVAl("DESEJA INSERIR UM NOVO DADO? ")
   ESCREVAl("DIGITE 1 PARA CONTINUAR")
   ESCREVAl("DIGITE 0 PARA SAIR")
   LEIA(INSERIR_NOVO)
   limpatela
fimenquanto

// IMPRIME A QUANTIDADE TOTAL DE VE�CULOS DIGITADOS
escreval ("A soma de ve�culos � de: ",soma_veiculos)
// IMPRIME A QUANTIDADE TOTAL DE VE�CULOS DIGITADOS
escreval ("A quantidade de cidades � de: ", soma_cidades)
//IMPRIME A QUANTIDADE TOAL DE CIDADES DIGITADAS
escreval ("A quantidade de acidentes � de: ", soma_acidentes)
escreval ("-----------------------------------")
//IMPRIME A CIDADE COMO O MENOR �NDICE DE ACIDENTES E O  MENOR INDICE DE ACIDENTES
escreval ("A cidade", codigo_menor_cidade, " teve o menor n�mero de acidentes, com o total de", indice_menor_cidade, " acidentes.")
escreval ("-----------------------------------")
//IMPRIME A CIDADE COMO O MAIOR �NDICE DE ACIDENTES E O MAIOR INDICE DE ACIDENTES
escreval ("A cidade", codigo_maior_cidade, " teve o maior n�mero de acidentes, com o total de", indice_maior_cidade , " acidentes.")
escreval ("-----------------------------------")
//IMPRIME A MEDIA DE VEICULOS
escreval ("A m�dia de ve�culos total � de:  ", media_veiculos)
//IMPRIME A M�DIA DE ACIDENTES NAS CIDADES COM MENOS DE 2000 VEICULOS
escreval ("A m�dia de acidentes nas cidadedes com menos de 2000 ve�culos � de:  ", media_acidentes_menor_2000)

Fimalgoritmo
