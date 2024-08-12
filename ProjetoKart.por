programa {
	inclua biblioteca Util-->u
	funcao cadeia ModeloKart ( ){ 	
  			cadeia x 
  			escreva ("\nInsira o modelo do Kart: ")
			leia (x)
			retorne (x)
 	}

 	funcao real ValorKart ( ){
  			real x
  			escreva ("\nInsira o valor do Kart: ")
			leia (x)
			retorne (x)
  	}

	funcao KartsDisponiveis (cadeia Nome [], real V [], inteiro S [], inteiro qtd [], real total [], inteiro t){
  			inteiro i=0
  			se (t==0){
  				escreva ("Nenhum Kard cadastrado até o momento.\n")
  				u.aguarde(2000)
  			}senao{
  				escreva ("Os Karts cadastrados são: \n")
  				para (i=0; i<=t; i++){
  					se (S [i]==1){
  						escreva ("O modelo ", Nome [i]," foi adquirido por R$ ", V [i]," alugado ", qtd [i], " vezes, gerando um lucro total de R$ ", total[i], ".\n")
  						u.aguarde(2000)
  					}
  				} 	
  			} 						
 	 }

	funcao kartLocados(){
		
	}

	funcao alugarKart(){
		
	}

	funcao devolverKart(){
		
	}

	funcao kartMaiorGanho(){
		
	}

	funcao receitaDia(){
		
	}

	funcao alugarCircuito(){
		
	}

	funcao atualizarDia(){
		
	}

	funcao sair(){
		limpa()
		escreva(" __________________________  \n")
		escreva("|                          | \n")
		escreva("|   Sistema Finalizado!    | \n")
		escreva("|__________________________| \n")
	}

	funcao inicio(){
		cadeia modelo[15]
		real valor[15]
		inteiro qtdLocado[15]
		inteiro disponivel[15] // 1 = disponivel, 0 = locado
		real valorAcumulado[15]
		inteiro menu=1, continuar, tamanho=0, i=0, k
		
		enquanto (menu==1){
			
    			escreva(" ________________________________________________________\n")
    			escreva("|                   KART CONTROL                         |\n")
			escreva("|                                                        | \n")
			escreva("| 1.  Cadastrar um Kart                                  | \n")
			escreva("| 2.  Listar Karts disponíveis                           | \n")
			escreva("| 3.  Listar Karts locados                               | \n")
			escreva("| 4.  Alugar um Kart                                     | \n")
			escreva("| 5.  Devolver um Kart                                   | \n")
			escreva("| 6.  Kart que mais gerou ganhos                         | \n")
			escreva("| 7.  Receita e lucro do dia, considerando karts locados | \n")
			escreva("| 8.  Locação de circuito                                | \n")
			escreva("| 9.  Atualizar dia                                      | \n")
			escreva("| 10. Sair do programa                                   | \n")
			escreva("|________________________________________________________| \n")
			escreva("\n")
			escreva("R: ")
			leia(continuar)
    			escolha(continuar){
				caso 1:
					se (tamanho <=14){
						i=0
						enquanto (i==0){
							se (tamanho <=14){
								modelo [tamanho]= ModeloKart ( )
								valor [tamanho]= ValorKart ( )
								disponivel [tamanho]= 1
								qtdLocado [tamanho]= 0
								valorAcumulado[tamanho]= 0
								escreva ("Deseja inserir um novo Kart? Digite 1 para sim ou qualquer outro valor para não! \n")
								leia (k)
								se(k==1){
									tamanho++
								}senao{
									tamanho++
									i++
								}
							}senao{
								escreva ("Número máximo de vagas de cadastro preenchidas\n!")
								i++
							}
						}	
						}senao{
							escreva ("Número máximo de vagas de cadastro preenchidas!\n")	
						}					
				pare
				
				caso 2:
					KartsDisponiveis (modelo, valor, disponivel, qtdLocado, valorAcumulado, tamanho)
				pare
				
				caso 3:
					kartLocados()
				pare
				
				caso 4:
					alugarKart()
				pare
				
				caso 5:
					devolverKart()
				pare
				
				caso 6:
					kartMaiorGanho()
				pare
				
				caso 7:
					receitaDia()
				pare
				
				caso 8:
					alugarCircuito()
				pare
				
				caso 9:
					atualizarDia()
				pare
				
				caso 10:
					sair()
					menu=2
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {modelo, 70, 9, 6}-{valor, 71, 7, 5}-{qtdLocado, 72, 10, 9}-{disponivel, 73, 10, 10}-{valorAcumulado, 74, 7, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */