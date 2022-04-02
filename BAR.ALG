Algoritmo "BAR"

Var

   sexo : caractere
   qtdeCerveja, qtdeRefri, qtdeEspetinho : real
   ingresso, couvert, consumo, valPagar : real

Inicio

   escreva("Sexo :")
   leia(sexo)
   escreva("Quantidade de cervejas :")
   leia(qtdeCerveja)
   escreva("Quantidade de refrigerantes :")
   leia(qtdeRefri)
   escreva("Quantidade de espetinhos :")
   leia(qtdeEspetinho)

   escolha sexo
   caso "M"
      ingresso <- 10
   caso "F"
      ingresso <- 8
//   outrocaso
//      escreva("Para Sexo informe M ou F ")
   fimescolha

   consumo <- ( ( qtdeCerveja * 5 ) + ( qtdeRefri * 3 ) + ( qtdeEspetinho * 7 ) )

   se consumo < 30 entao
      couvert <- 4
   fimse

   valPagar <- ingresso + consumo + couvert

   escreval( )
   escreval("Relatório")
   escreval("Consumo = R$ " , consumo:8:2  )
   se couvert = 0 entao
      escreval("Isento de Couvert " )
   senao
      escreval("Couvert = R$ " , couvert:8:2  )
   fimse
   escreval("Ingresso = R$ " , ingresso:8:2  )
   escreval( )
   escreval("Valor a pagar = R$ " , valPagar:8:2  )

Fimalgoritmo