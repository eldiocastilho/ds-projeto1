// Parametros:
// quantia: valor recebido como sal�rio
// Efeito: retorna o imposto a ser pago sobre o sal�rio
funcao impostoSobreSalario(quantia: real) : real
var
   salarioMensal, impostoSalario : real
inicio
   salarioMensal <- quantia / 12
   se salarioMensal > 3000 entao
      se salarioMensal >= 5000 entao
         impostoSalario <-  rendaAnualSalario * 0.2
      senao
         impostoSalario <-  rendaAnualSalario * 0.1
      fimse
   fimse
   retorne impostoSalario
fimfuncao


// Parametros:
// quantia: valor recebido como presta��o de servi�os
// Efeito: retorna o imposto a ser pago sobre presta��o de servi�os
funcao impostoSobreServicos(quantia: real) : real
var
   impostoServico : real
inicio
   se quantia > 0 entao
      impostoServico <-  quantia * 0.15
   fimse
   retorne impostoServico
fimfuncao


// Parametros:
// quantia: valor recebido como ganho de capital
// Efeito: retorna o imposto a ser pago sobre ganhos de capital
funcao impostoSobreGC(quantia: real) : real
var
   impostoGanhoCapital : real
inicio
   se quantia > 0 entao
      impostoGanhoCapital <- quantia * 0.2
   fimse
   retorne impostoGanhoCapital
fimfuncao


// Parametros:
// salario: valor recebido como sal�rio
// servicos: valor recebido como presta��o de servi�os
// gc: valor recebido como ganho de capital
// Efeito: retorna o imposto bruto total a ser pago
funcao impostoBrutoTotal(salario: real; servicos: real; gc: real) : real
var
   impostoBrutoTot : real
inicio
   impostoBrutoTot <- salario + servicos + gc
   retorne impostoBrutoTot
fimfuncao


// Parametros:
// salario: valor recebido como sal�rio
// servicos: valor recebido como presta��o de servi�os
// gc: valor recebido como ganho de capital
// gastosMedicos: valor gasto com despesas m�dicas
// gastosEducacionais: valor gasto com despesas educacionais
// Efeito: retorna o valor que o contribuinte pode abater no seu imposto
funcao abatimento(salario: real; servicos: real; gc: real; gastosMedicos: real; gastosEducacionais: real) : real
var
   valImpostoBrutoTotal, maxDedutivel, gastosDedutivel, abat : real
inicio

   valImpostoBrutoTotal <-  salario +  servicos + gc

   maxDedutivel <- valImpostoBrutoTotal * 0.3

   gastosDedutivel <- despesasMedicas +  despesasEducaionais

   se gastosDedutivel > maxDedutivel entao
      abat <- maxDedutivel
   senao
      abat <- gastosDedutivel
   fimse
   retorne abat
fimfuncao

// Parametros:
// Efeito: calcular o imposto devido
funcao calcImpostoDevido( impostoBruto : real; valAbatimento: real ) : real
var
   valImpostoDevido : real
inicio
   valImpostoDevido <- impostoBruto - valAbatimento
   retorne valImpostoDevido
fimfuncao

Algoritmo "CONTRIBUINTES"

Var

   // Entradas
   rendaAnualSalario, rendaAnualServico, rendaGanhoCapital : real
   despesasMedicas, despesasEducaionais : real

   // Vari�veis de C�lculo
   impostoSalario, impostoServico, impostoGanhoCapital : real
   maxDedutivel, gastosDedutivel : real
   impostoBrutoTot, valAbatimento, impostoDevido : real
   salarioMensal : real

Inicio

   escreval("Digite os dados do contribuinte: ")
   escreva("Renda Anual com sal�rio :")
   leia(rendaAnualSalario)
   escreva("Renda Anual com presta��o de servi�o :")
   leia(rendaAnualServico)
   escreva("Renda Anual com ganho de capital :")
   leia(rendaGanhoCapital)
   escreva("Gastos m�dicos :")
   leia(despesasMedicas)
   escreva("Gastos educacionais :")
   leia(despesasEducaionais)


   impostoSalario <- impostoSobreSalario( rendaAnualSalario )

   impostoServico <- impostoSobreServicos( rendaAnualServico )

   impostoGanhoCapital <- impostoSobreGC( rendaGanhoCapital )

   impostoBrutoTot <- impostoBrutoTotal( impostoSalario, impostoServico, impostoGanhoCapital )

   valAbatimento <-  abatimento( impostoSalario, impostoServico, impostoGanhoCapital, despesasMedicas, despesasEducaionais )

   impostoDevido <-  calcImpostoDevido( impostoBrutoTot, valAbatimento )


   escreval( )
   escreval( "RELAT�RIO: ")
   escreval( "Imposto sobre sal�rio: " , impostoSalario:8:2 )
   escreval( "Imposto sobre servi�o: " , impostoServico:8:2 )
   escreval( "Imposto de ganho de capital: " , impostoGanhoCapital:8:2 )
   escreval( "Imposto bruto total: " , impostoBrutoTot:8:2 )
   escreval( "Abatimento: " , valAbatimento:8:2 )
   escreval( "Imposto devido: " , impostoDevido:8:2 )



Fimalgoritmo