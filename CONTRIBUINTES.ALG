// Parametros:
// quantia: valor recebido como salário
// Efeito: retorna o imposto a ser pago sobre o salário
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
// quantia: valor recebido como prestação de serviços
// Efeito: retorna o imposto a ser pago sobre prestação de serviços
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
// salario: valor recebido como salário
// servicos: valor recebido como prestação de serviços
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
// salario: valor recebido como salário
// servicos: valor recebido como prestação de serviços
// gc: valor recebido como ganho de capital
// gastosMedicos: valor gasto com despesas médicas
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



Algoritmo "CONTRIBUINTES"

Var

   // Entradas
   rendaAnualSalario, rendaAnualServico, rendaGanhoCapital : real
   despesasMedicas, despesasEducaionais : real

   // Variáveis de Cálculo
   impostoSalario, impostoServico, impostoGanhoCapital : real
   maxDedutivel, gastosDedutivel : real
   impostoBrutoTot, valAbatimento, impostoDevido : real
   salarioMensal : real

Inicio

   escreval("Digite os dados do contribuinte: ")
   escreva("Renda Anual com salário :")
   leia(rendaAnualSalario)
   escreva("Renda Anual com prestação de serviço :")
   leia(rendaAnualServico)
   escreva("Renda Anual com ganho de capital :")
   leia(rendaGanhoCapital)
   escreva("Gastos médicos :")
   leia(despesasMedicas)
   escreva("Gastos educacionais :")
   leia(despesasEducaionais)


   impostoSalario <- impostoSobreSalario( rendaAnualSalario )

   impostoServico <- impostoSobreServicos( rendaAnualServico )

   impostoGanhoCapital <- impostoSobreGC( rendaGanhoCapital )

   impostoBrutoTot <- impostoBrutoTotal( impostoSalario, impostoServico, impostoGanhoCapital )

   valAbatimento <-  abatimento( impostoSalario, impostoServico, impostoGanhoCapital, despesasMedicas, despesasEducaionais )

   impostoDevido <-  impostoBrutoTot -  valAbatimento


   escreval( )
   escreval( "RELATÓRIO: ")
   escreval( "Imposto sobre salário: " , impostoSalario:8:2 )
   escreval( "Imposto sobre serviço: " , impostoServico:8:2 )
   escreval( "Imposto de ganho de capital: " , impostoGanhoCapital:8:2 )
   escreval( "Imposto bruto total: " , impostoBrutoTot:8:2 )
   escreval( "Abatimento: " , valAbatimento:8:2 )
   escreval( "Imposto devido: " , impostoDevido:8:2 )



Fimalgoritmo