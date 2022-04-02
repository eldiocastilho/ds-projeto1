Algoritmo "Telefone"

Var

   n, i, j : inteiro

   nomes : vetor[0..99] de caractere
   telefones : vetor[0..99] de caractere
   tiposAssinaturas : vetor[0..99] de inteiro
   minutos : vetor[0..99] de inteiro
   //   valorConta : vetor[0..99] de real
   precos : vetor[0..2, 0..1 ] de real

   valConta, valExcedente : real
   minutosExcedentes : real

Inicio

   escreva("Qual a quantidade de poessoas ? ")
   leia(n)

   para i de 0 ate n-1 faca

      escreval("Dados do ", i+1, "o cliente: ")
      escreva("Nome : ")
      leia(nomes[i])
      escreva("Telefone : ")
      leia(telefones[i])
      escreva("Tipo : ")
      leia(tiposAssinaturas[i])
      escreva("Minutos : ")
      leia(minutos[i])

   fimpara

   escreval( )
   escreval("Informe o preço básico e excedente de cada tipo de conta ")
   para i de 0 ate 2 faca
      escreval("Tipo ", i, " :")
      para j de 0 ate 1 faca
         leia(precos[i, j])
      fimpara
   fimpara

   escreval( )
   escreval("Relatório de Clientes : " )
   para i de 0 ate n-1 faca
      se minutos[i] > 90 então
         minutosExcedentes <-  minutos[i] - 90
         valConta <- precos[ tiposAssinaturas[i], 0 ]
         valExcedente <- ( minutosExcedentes * precos[tiposAssinaturas[i], 1])
         valConta <- valConta + valExcedente
      senão
         valConta <- precos[ tiposAssinaturas[i], 0 ]

         escreval(" Valor conta ", valConta )
      fimse
      escreval( Nomes[i], ", ", telefones[i], ", Tipo ", tiposAssinaturas[i], ", Minutos ", minutos[i], ", Conta = R# ", valConta:8:2  )

   fimpara

Fimalgoritmo