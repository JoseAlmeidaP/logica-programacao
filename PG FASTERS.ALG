Algoritmo "TESTE_FASTERS"


Var
   INDICE, D, ID, N, M:INTEIRO
   RESP, EXIT, EXCLUIRT, SAIR: CARACTERE
   T: VETOR[1..10] DE CARACTERE

PROCEDIMENTO SAIR()
INICIO
FIMESCOLHA
LIMPATELA
FIMALGORITMO
FIMPROCEDIMENTO
PROCEDIMENTO TOPO()
INICIO
   LIMPATELA
   ESCREVAL ("______________________________________________________")
   ESCREVAL
   ESCREVAL ("****************** MENU PRINCIPAL ********************")
   ESCREVAL ("______________________________________________________")
   ESCREVAL
   ESCREVAL ("*********** ESCOLHA O QUE DESEJA EXECUTAR: ***********")
   ESCREVAL ("______________________________________________________")
   ESCREVAL
   ESCREVAL (" [1] --------------------------- CADASTRAR FUNCIONARIO")
   ESCREVAL (" [2] ----------------------- LISTAR TODOS FUNCIONARIOs")
   ESCREVAL (" [3] --------------- SELECIONAR FUNCION�RIO ESPEC�FICO")
   ESCREVAL (" [4] ---------------- LISTAR FUNCION�RIOS EM INTERVALO")
   ESCREVAL (" [5] ---------------------- DELETAR TODOS FUNCION�RIOS")
   ESCREVAL (" [6] --------------- DELETAR FUNCION�RIO EM ESPEC�FICO")
   ESCREVAL (" [7] ---------- CADASTRAR FUNCION�RIO EM ID ESPEC�FICO")
   ESCREVAL (" [0] ------------------------------------ SAIR DO MENU")
   LEIA (D)
   ESCOLHA (D)
FIMPROCEDIMENTO
PROCEDIMENTO FIMCAD()
INICIO
   LIMPATELA
   ESCREVAL("EXEDIDO LIMITE DE CADASTRO! ")
   ESCREVAL("")
   ESCREVAL ("PARA RETORNAR AO MENU, DIGITE [0]: ")
   LEIA (SAIR)
   SE (SAIR = "0") ENTAO
      INDICE<-0
      TOPO()
   FIMSE
FIMPROCEDIMENTO
Inicio
   TOPO()
CASO 1
   SE (INDICE= 0) ENTAO
      INDICE<-1
   SENAO
      INDICE<-INDICE+INDICE
   FIMSE
   REPITA
      LIMPATELA
      ESCREVAL ("CADASTRE FUNCIONARIO: ")
      LEIA (T[INDICE])
      INDICE<-INDICE+1
      ESCREVAL ("DESEJA CADASTRAR UM NOVO FUNCIONARIO? [S/N]: ")
      LEIA (RESP)
      SE(RESP="S")ENTAO
         SE(INDICE>10)ENTAO
            FIMCAD()
         FIMSE
      FIMSE
   ATE (RESP="N")
   SE (RESP="N") ENTAO
      TOPO()
   FIMSE
CASO 2
   SE(INDICE>10)ENTAO
      INDICE<-INDICE-1
   FIMSE
   LIMPATELA
   ESCREVAL ("-------------------------------------------")
   ESCREVAL ("**LISTA DE TODOS FUNCIONARIOS CADASTRADOS**")
   ESCREVAL ("-------------------------------------------")
   ESCREVAL
   PARA INDICE <- 1 ATE 10 FACA
      ESCREVAL (INDICE,"- ", T[INDICE])
   FIMPARA
   ESCREVAL
   ESCREVAL ("PARA RETORNAR AO MENU, DIGITE [0]: ")
   LEIA (SAIR)
   SE (SAIR = "0") ENTAO
      TOPO()
   FIMSE
CASO 3
   LIMPATELA
   ESCREVA ("DIGITE O ID DO FUNCIONARIO DESEJADO: ")
   LEIA (ID)
   INDICE<-ID
   LIMPATELA
   ESCREVAL
   ESCREVAL ("------------------------------------")
   ESCREVAL (ID, " ", T[INDICE])
   ESCREVAL ("------------------------------------")
   ESCREVAL
   ESCREVA ("PARA RETORNAR AO MENU, DIGITE [0]: ")
   LEIA (SAIR)
   SE (SAIR = "0") ENTAO
      TOPO()
   FIMSE
CASO 4
   REPITA
      LIMPATELA
      ESCREVA ("DIGITE O N�MERO DE INICIO: ")
      LEIA (N)
      ESCREVA ("DIGITE N�MERO FINAL: ")
      LEIA (M)
      PARA INDICE <- N ATE M FACA
         ESCREVAL (INDICE,"- ", T[INDICE])
      FIMPARA
      ESCREVAL
      ESCREVA ("DESEJA FAZER UMA NOVA LISTAGEM? [S/N]: ")
      LEIA (SAIR)
   ATE (SAIR = "N")
   TOPO()
CASO 5
   LIMPATELA
   ESCREVA ("TEM CERTEZA QUE DESEJA EXCLUIR TUDO? [S/N]: ")
   LEIA (EXCLUIRT)
   SE (EXCLUIRT = "S") ENTAO
      PARA INDICE <- 1 ATE 10 FACA
         T[INDICE] <- ""
         INDICE<-0
      FIMPARA
   FIMSE
   LIMPATELA
   ESCREVAL ("EXCLU�DO COM SUCESSO!")
   ESCREVAL
   ESCREVAL
   ESCREVA ("PARA RETORNAR AO MENU, DIGITE [0]: ")
   LEIA (SAIR)
   SE (SAIR = "0") ENTAO
      INDICE<-0
      TOPO()
   FIMSE
CASO 6
   REPITA
      LIMPATELA
      ESCREVA ("DIGITE O ID DO FUNCIONARIO DESEJADO: ")
      LEIA (ID)
      INDICE<-ID
      LIMPATELA
      ESCREVAL
      ESCREVAL ("------------------------------------")
      ESCREVAL (ID,"- ", T[INDICE])
      ESCREVAL ("------------------------------------")
      ESCREVAL
      ESCREVA ("TEM CERTEZA QUE DESEJA EXCLUIR ESTE FUNCIONARIO? [S/N]: ")
      LEIA (EXCLUIRT)
      SE (EXCLUIRT = "S") ENTAO
         T[INDICE] <- ""
      FIMSE
      LIMPATELA
      ESCREVAL ("EXCLU�DO COM SUCESSO!")
      ESCREVAL
      ESCREVAL
      ESCREVA("DESEJA EXCLUIR OUTRO FUNCIONARIO? [S/N]")
      LEIA(RESP)
   ATE(RESP="N")
   LIMPATELA
   ESCREVA ("PARA RETORNAR AO MENU, DIGITE [0]: ")
   LEIA (SAIR)
   SE (SAIR = "0") ENTAO
      TOPO()
   FIMSE
CASO 7
   REPITA
   LIMPATELA
   ESCREVA("DIGITE O ID DESEJADO ")
   LEIA(ID)
   INDICE<-ID
   ESCREVAL("CADASTRE FUNCIONARIO ")
   LEIA(T[INDICE])
   LIMPATELA
   ESCREVAL("CADASTRO REALIZADO COM SUCESSO ")
   ESCREVAL("")
   ESCREVAL("DESEJA CADASTRAR NOVO FUNCIONARIO? [S/N] ")
   LEIA(SAIR)
   ATE(SAIR="N")
   TOPO()
CASO 0
   ESCREVA ("TEM CERTEZA QUE DESEJA SAIR DO MENU? [S/N]: ")
   LEIA (RESP)
   SE(RESP = "N") ENTAO
      TOPO()
   SENAO
      SAIR()
   FIMSE
FIMESCOLHA
Fimalgoritmo