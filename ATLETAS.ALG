Algoritmo "ATLETAS"

Var

   // Vari�veis de leitura
   numAtletas : inteiro
   nome, sexo : caractere
   altura, peso : real

   // Vari�veis de c�lculo
   i, qtdeHomens, qtdeMulheres : inteiro
   pesoMedio, pesoTotal, percH, alturaMediaM, alturaMulheres, maisAlto : real
   nomeMaisAlto : caractere

Inicio

   escreva("Qual a quantidade de atletas? " )
   leia(numAtletas)

   para i de 1 ate numAtletas faca

      escreval("Digite os dados do atleta numero ",i, ":" )

      escreva("Nome: ")
      leia(nome)

      escreva("Sexo: ")
      leia(sexo)
      enquanto (sexo <> "F") e (sexo <> "M") faca
         escreva("Valor inv�lido. Favor digitar F ou M ")
         leia(sexo)
      fimenquanto

      escreva("Altura: ")
      leia(altura)
      enquanto altura <= 0 faca
         escreva("Valor inv�lido. Favor digitar um valor positivo ")
         leia(altura)
      fimenquanto

      escreva("Peso: ")
      leia(peso)
      enquanto peso <= 0 faca
         escreva("Valor inv�lido. Favor digitar um valor positivo ")
         leia(peso)
      fimenquanto

      pesoTotal <- pesoTotal + peso.

      se altura > maisAlto entao
         maisAlto <- altura
         nomeMaisAlto <- nome
      fimse

      se sexo = "M" ent�o
         qtdeHomens <- qtdeHomens + 1
      sen�o

         qtdeMulheres <- qtdeMulheres + 1
         alturaMulheres <- alturaMulheres + altura
      fimse

   fimpara

   pesoMedio <- pesoTotal / numAtletas
   percH <- ( QtdeHomens / numAtletas) * 100
   se qtdeMulheres > 0 ent�o
      alturaMediaM <- alturaMulheres /  qtdeMulheres
   fimse

   escreval( )
   escreval("RELAT�RIO")
   escreval("Peso m�dio dos atltetas: ", pesoMedio:8:2)
   escreval("Atleta mais alto: ", nomeMaisAlto)
   escreval("Porcentagem de hoomens: ", percH:8:2, " %")

   se qtdeMulheres  = 0 ent�o
      escreval("N�o h� mulheres cadastradas")
   senao
      escreval("Altura m�dia das mulheres: ", alturaMediaM )
   fimse


Fimalgoritmo