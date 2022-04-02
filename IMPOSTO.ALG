Algoritmo "IMPOSTO"

Var

   // Entradas
   rendaAnualSalario, rendaAnualServico, rendaGanhoCapital : real
   despesasMedicas, despesasEducaionais : real

   // Variáveis de Cálculo
   impostoSalario, impostoServico, impostoGanhoCapital : real
   maxDedutivel, gastosDedutivel : real
   impostoBrutoTotal, abatimento, impostoDevido : real
   salarioMensal : real

Inicio

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

   salarioMensal <- rendaAnualSalario / 12

   se salarioMensal > 3000 entao
      se salarioMensal >= 5000 entao
         impostoSalario <-  rendaAnualSalario * 0.2
      senao
         impostoSalario <-  rendaAnualSalario * 0.1
      fimse
   fimse

   se rendaAnualServico > 0 entao
      impostoServico <-  rendaAnualServico * 0.15
   fimse

   se rendaGanhoCapital > 0 entao
      impostoGanhoCapital <- rendaGanhoCapital * 0.2
   fimse

   impostoBrutoTotal <-  impostoSalario +  impostoServico + impostoGanhoCapital

   maxDedutivel <- impostoBrutoTotal * 0.3

   gastosDedutivel <- despesasMedicas +  despesasEducaionais

   se gastosDedutivel > maxDedutivel entao
      abatimento <- maxDedutivel
   senao
      abatimento <- gastosDedutivel
   fimse

   impostoDevido <- impostoBrutoTotal - abatimento

   escreval( )
   escreval( "RELATOÓRIO DE IMPOSTO DE RENDA")
   escreval( )
   escreval( "CONSOLIDADO DE RENDA:" )
   escreval( "Imposto sobre salário: " , impostoSalario:8:2 )
   escreval( "Imposto sobre serviço: " , impostoServico:8:2 )
   escreval( "Imposto de ganho de capital: " , impostoGanhoCapital:8:2 )
   escreval( )
   escreval( "DEDUÇÕES:")
   escreval( "Máximo dedutivel: " , maxDedutivel:8:2 )
   escreval( "Gastos dedutíveis: " , gastosDedutivel:8:2 )
   escreval( )
   escreval( "RESUMO:")
   escreval( "Imposto bruto total: " , impostoBrutoTotal:8:2 )
   escreval( "Abatimento: " , abatimento:8:2 )
   escreval( "Imposto devido: " , impostoDevido:8:2 )



Fimalgoritmo