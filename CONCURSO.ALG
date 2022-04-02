Algoritmo "CONCURSO"

Var
   n, i, aprovados : inteiro
   nomes : vetor [0..99] de caracter
   notas1 : vetor [0..99] de real
   notas2 : vetor [0..99] de real
   medias : vetor [0..99] de real

   media, maiorMedia, percAprov, somaAprovados, mediaAprovados : real
   nomeMaiorMedia : caractere

Inicio

   escreva("Qual a quantidade de poessoas ? ")
   leia(n)

   para i de 0 ate n-1 faca

      escreval("Digite os dados da ", i+1, "a pessoa: ")
      escreva("Nome : ")
      leia(nomes[i])
      escreva("Nota etapa 1 : ")
      leia(notas1[i])
      escreva("Nota etapa 2 : ")
      leia(notas2[i])

      medias[i] <- ( notas1[i] + notas2[i] ) / 2

      se  medias[i] > maiorMedia então
         maiorMedia <- medias[i]
         nomeMaiorMedia <- nomes[i]
      fimse

   fimpara

   escreval( )
   escreval("TABELA :")
   para i de 0 ate n-1 faca
      escreval( nomes[i] , notas1[i]:8:2 , notas2[i]:8:2 , " Média = ", medias[i]:8:2 )
   Fimpara

   escreval( )
   escreval("PESSOAS APROVADAS :")
   para i de 0 ate n-1 faca
      se  medias[I] >= 70 então
         escreval( nomes[i] )
         somaAprovados <- somaAprovados + medias[i]
         aprovados <- aprovados + 1
      fimse
   Fimpara

   se aprovados > 0 então
      percAprov <- aprovados / n * 100
      mediaAprovados <-  somaAprovados / aprovados
   fimse

   escreval( )
   escreval("Porcentagem de aprovação : ", percAprov:8:2 , " %" )
   escreval("Maior média : " , nomeMaiorMedia )
   se aprovados > 0 então
      escreval("Nota média dos aprovados : " , mediaAprovados:8:2 )
   senão
      escreval("Não há candidatos aprovados " )
   fimse
Fimalgoritmo