Algoritmo sin_titulo
	
	Definir opcMenu,opcCredito,sue,opcCuota,numCuota,valorCredito,opcBuscar,mostrarInformacion,resVolver Como Entero
	Definir nomCliente, apeCliente, Run, fecha, comparador Como Caracter
	
	Dimension nomCliente[5];
	Dimension apeCliente[5];
	Dimension credSolicitado[5];
	Dimension run[5];
	Dimension numCuota[5];
	Dimension fecha[5];
	j = 0
	

	
	Repetir
		
		resVolver = 1
		Imprimir j
		Imprimir "--------------------------------------------------"
		Imprimir "Bienvenido a el administrador de cotizaciones"
		Imprimir "--------------------------------------------------"
		
		Imprimir "Ingrese nombre"
		leer nomcliente[j]
		Imprimir "Ingrese apellido"
		leer apeCliente[j]
		Imprimir "Ingrese Run, Con . y - "
		leer run[j]
		Imprimir "Fecha actual, Formato DD/MM/AAAA"
		leer fecha[j]
		
		repetir
			
			repetir
				
				Imprimir "---------------------------------------"
				Imprimir "1. Seleccionar tipo de cr�dito"
				Imprimir "2. Mostrar informaci�n de credito"
				Imprimir "3. lista de clientes"
				Imprimir "4. buscar cliente"
				Imprimir "5. salir"
				leer opcMenu 
				
			Hasta Que opcMenu > 0 y opcMenu < 6
			
			si opcMenu = 5 Entonces
				resVolver = 2
				si tipoCredito = 1 o tipoCredito = 2
					j = j + 1
				FinSi
			FinSi
			
			Segun opcMenu Hacer
				
				1:
					Repetir
						
						Imprimir "Seleccione tipo de credito"
						Imprimir "----------------------------------"
						Imprimir "1. Automotriz"
						Imprimir "2. Hipotecaria"
						Leer tipoCredito
						
					Hasta Que tipoCredito > 0 y tipoCredito < 3
					
					Segun tipoCredito
						
						1:
							Imprimir "Ingrese su sueldo"
							leer sue
							
							si sue >= 1000000 Entonces
								
								Repetir
									
									Imprimir "---------------------------------------"
									Imprimir "Credito minimo = $10000000"
									Imprimir "Credito Maximo = $20000000"
									Imprimir "---------------------------------------"
									Imprimir "Ingrese Credito a solicitar"
									leer credSolicitado[j]
									
								Hasta Que credSolicitado[j] >= 10000000 y credSolicitado[j] <= 20000000
								
								Imprimir "-------------------------------"
								Imprimir "El pie a pagar es $", redon(credSolicitado[j] * 0.2)
								Imprimir "-------------------------------"
								
								Repetir
									Imprimir "En cuantas cuotas desea pagar el credito"
									Imprimir "1. 36 cuotas"
									Imprimir "2. 48 cuotas"
									Leer opcCuota
									
									Segun opcCuota
										
										1: 
											numCuota[j] = 1
											
											
										2:
											numCuota[j] = 2
											
											
									FinSegun
									
								Hasta Que opcCuota = 1 o opcCuota = 2
								
								
								
							SiNo
								
								Imprimir "Sueldo insuficiente"
								
							FinSi
							
							Repetir
								
								Imprimir "--------------------------------------"
								Imprimir "�Desea volver al menu?"
								Imprimir "1. SI"
								Imprimir "2. NO"
								leer resVolver
								
							Hasta Que resVolver = 1 o resVolver = 2
							si resVolver = 2 Entonces
								j = j + 1
							FinSi
							
						2:
							Imprimir "ingrese sueldo"
							leer sue
							
							si sue >= 1500000 Entonces
								
								Repetir
									
									Imprimir "---------------------------------------"
									Imprimir "Credito minimo = 2000UF"
									Imprimir "Credito Maximo = 4000UF"
									Imprimir "---------------------------------------"
									Imprimir "Cuanto credito en UF que desea solicitar"
									leer credSolicitado[j]
									
								Hasta Que credSolicitado[j] >= 2000 y credSolicitado[j] <= 4000
								
								credSolicitado[j] = credSolicitado[j] * 34353
								
								Imprimir "-------------------------------"
								Imprimir "El pie a pagar es $", redon(credSolicitado[j] * 0.1)
								
								Repetir
									
									Imprimir "En cuantas cuotas desea pagarlo"
									Imprimir "1. 120 cuotas"
									Imprimir "2. 240 cuotas"
									Imprimir "3. 300 cuotas"
									Leer opcCuota
									
									Segun opcCuota
										
										1: 
											numCuota[j] = 3
											
										2:
											numCuota[j] = 4
											
										3:
											numCuota[j] = 5
											
											
									FinSegun
									
									
								Hasta Que opcCuota >= 1 y opcCuota <= 3
								
								
								
							SiNo
								
								Imprimir "Sueldo insuficiente"
								
							FinSi
							
							Repetir
								
								Imprimir "--------------------------------------"
								Imprimir "�Desea volver al menu?"
								Imprimir "1. SI"
								Imprimir "2. NO"
								leer resVolver
								
							Hasta Que resVolver = 1 o resVolver = 2
							si resVolver = 2 Entonces
								j = j + 1
							FinSi
					FinSegun
					
					
				2:
					Imprimir "Nombre: ", nomCliente[j];
					Imprimir "Apellido: ",apeCliente[j];
					Imprimir "Run: ",run[j];
					Imprimir "Fecha de cotizacion: ",fecha[j]
					Imprimir "Credito Solicitado: $",credSolicitado[j];
					Segun numCuota[j]
						
						1 o 2:
							Imprimir "Pie: ", credSolicitado[j] * 0.2
							
						3 o 4 o 5:
							imprimir "Pie: ", credSolicitado[j] * 0.1
							
					FinSegun
					
					Segun numCuota[j]
						
						1:
							
							Imprimir "Tasa de interes: 10%"
							Imprimir "numero de cuotas: 36"
							Imprimir "Valor de cuota: $",redon(((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.1)/36)
							Imprimir "Valor total del credito: $", redon((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.1)
							
						2:
							
							Imprimir "Tasa de interes: 15%"
							Imprimir "numero de cuotas: 48"
							Imprimir "Valor de cuota: $",redon(((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.15)/48)
							Imprimir "Valor total del credito: $", redon((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.15)
							
						3:
							
							Imprimir "Tasa de interes: 25%"
							Imprimir "numero de cuotas: 120"
							Imprimir "Valor de cuota: $",redon(((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.25)/120)
							Imprimir "Valor total del credito: $", redon((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.25)
							
						4:
							
							Imprimir "Tasa de interes: 30%"
							Imprimir "numero de cuotas: 240"
							Imprimir "Valor de cuota: $",redon(((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.3)/240)
							Imprimir "Valor total del credito: $", redon((credSolicitado[j] - credSolicitado[i] * 0.2 ) + credSolicitado[j] * 0.3)
							
						5:
							
							Imprimir "Tasa de interes: 50%"
							Imprimir "numero de cuotas: 300"
							Imprimir "Valor de cuota: $",redon(((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.5)/300)
							Imprimir "Valor total del credito: $", redon((credSolicitado[j] - credSolicitado[j] * 0.2 ) + credSolicitado[j] * 0.5)
							
					FinSegun
					
				3:
					Imprimir "------------------------------------------"
					Imprimir "Clientes"
					Para i = 0 Hasta 4 Hacer
						
						si nomCliente[i] <> "" Entonces
							Imprimir "------------------------------------------"
							Imprimir "Nombre y apellido: ",nomCliente[i]," ", apeCliente[i]
							Imprimir "RUT: ", run[i]
							Imprimir "Fecha de cotizacion: ",fecha[i]
							
							Segun numCuota[i]
								1:
									
									Imprimir "Valor total del credito pedido: $", redon((credSolicitado[i] - credSolicitado[i] * 0.2 ) + credSolicitado[i] * 0.1)
									
								2:
									
									Imprimir "Valor total del credito pedido: $", redon((credSolicitado[i] - credSolicitado[i] * 0.2 ) + credSolicitado[i] * 0.15)
									
								3:
									
									Imprimir "Valor total del credito pedido: $", redon((credSolicitado[i] - credSolicitado[i] * 0.2 ) + credSolicitado[i] * 0.25)
									
								4:
									
									Imprimir "Valor total del credito pedido: $", redon((credSolicitado[i] - credSolicitado[i] * 0.2 ) + credSolicitado[i] * 0.3)
									
								5:
									
									Imprimir "Valor total del credito pedido: $", redon((credSolicitado[i] - credSolicitado[i] * 0.2 ) + credSolicitado[i] * 0.5)
									
							FinSegun
						FinSi
						
					FinPara
					
				4:
					Repetir
						Imprimir "Buscar por:"
						Imprimir "1. Nombre"
						Imprimir "2. Apellido"
						Imprimir "3. Run"
						Leer opcBuscar
					Hasta Que opcBuscar > 0 y opcBuscar < 4
					
					Segun opcBuscar
						
						1:
							imprimir "Ingrese nombre"
							leer comparador
							
							Para n = 0 Hasta 4 Con Paso 1
								si comparador = nomCliente[n]
									Imprimir "Cliente encontrado"
									Repetir
										Imprimir "----------------------------------------"
										Imprimir "�Mostrar informacion?"
										Imprimir "1. SI"
										Imprimir "2. NO"
										Leer mostrarInformacion
										
									Hasta Que mostrarInformacion = 1 o mostrarInformacion = 2
									
									si mostrarInformacion = 1 Entonces
										Imprimir "Nombre: ", nomCliente[n];
										Imprimir "Apellido: ",apeCliente[n];
										Imprimir "Run: ",run[n];
										Imprimir "Fecha de cotizacion: ",fecha[n];
										Imprimir "Credito Solicitado: $",credSolicitado[n];
										Segun numCuota[n]
											
											1 o 2:
												Imprimir "Pie: ", credSolicitado[n] * 0.2
												
											3 o 4 o 5:
												imprimir "Pie: ", credSolicitado[n] * 0.1
												
										FinSegun
										
										Segun numCuota[n]
											
											1:
												
												Imprimir "Tasa de interes: 10%"
												Imprimir "numero de cuotas: 36"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.1)/36)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.1)
												
											2:
												
												Imprimir "Tasa de interes: 15%"
												Imprimir "numero de cuotas: 48"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.15)/48)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.15)
												
											3:
												
												Imprimir "Tasa de interes: 25%"
												Imprimir "numero de cuotas: 120"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.25)/120)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.25)
												
											4:
												
												Imprimir "Tasa de interes: 30%"
												Imprimir "numero de cuotas: 240"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.3)/240)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.3)
												
											5:
												
												Imprimir "Tasa de interes: 50%"
												Imprimir "numero de cuotas: 300"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.5)/300)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.5)
												
										FinSegun
										
									FinSi
									
								FinSi
								
							FinPara
							
						2:
							imprimir "Ingrese apellido"
							leer comparador
							
							Para n = 0 Hasta 4 Con Paso 1
								si comparador = apeCliente[n]
									Imprimir "Cliente encontrado"
									
									Repetir
										Imprimir "----------------------------------------"
										Imprimir "�Mostrar informacion?"
										Imprimir "1. SI"
										Imprimir "2. NO"
										Leer mostrarInformacion
										
									Hasta Que mostrarInformacion = 1 o mostrarInformacion = 2
									
									si mostrarInformacion = 1 Entonces
										Imprimir "Nombre: ", nomCliente[n];
										Imprimir "Apellido: ",apeCliente[n];
										Imprimir "Run: ",run[n];
										Imprimir "Fecha de cotizacion: ",fecha[n];
										Imprimir "Credito Solicitado: $",credSolicitado[n];
										Segun numCuota[n]
											
											1 o 2:
												Imprimir "Pie: ", credSolicitado[n] * 0.2
												
											3 o 4 o 5:
												imprimir "Pie: ", credSolicitado[n] * 0.1
												
										FinSegun
										
										Segun numCuota[n]
											
											1:
												
												Imprimir "Tasa de interes: 10%"
												Imprimir "numero de cuotas: 36"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.1)/36)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.1)
												
											2:
												
												Imprimir "Tasa de interes: 15%"
												Imprimir "numero de cuotas: 48"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.15)/48)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.15)
												
											3:
												
												Imprimir "Tasa de interes: 25%"
												Imprimir "numero de cuotas: 120"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.25)/120)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.25)
												
											4:
												
												Imprimir "Tasa de interes: 30%"
												Imprimir "numero de cuotas: 240"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.3)/240)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.3)
												
											5:
												
												Imprimir "Tasa de interes: 50%"
												Imprimir "numero de cuotas: 300"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.5)/300)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.5)
												
										FinSegun
										
									FinSi
									
								FinSi
								
							FinPara
							
						3:
							imprimir "Run"
							leer comparador
							
							Para n = 0 Hasta 4 Con Paso 1
								si comparador = run[n]
									Imprimir "Cliente encontrado"
									
									si mostrarInformacion = 1 Entonces
										Imprimir "Nombre: ", nomCliente[n];
										Imprimir "Apellido: ",apeCliente[n];
										Imprimir "Run: ",run[n];
										Imprimir "Fecha de cotizacion: ",fecha[n];
										Imprimir "Credito Solicitado: $",credSolicitado[n];
										Segun numCuota[n]
											
											1 o 2:
												Imprimir "Pie: ", credSolicitado[n] * 0.2
												
											3 o 4 o 5:
												imprimir "Pie: ", credSolicitado[n] * 0.1
												
										FinSegun
										
										Segun numCuota[n]
											
											1:
												
												Imprimir "Tasa de interes: 10%"
												Imprimir "numero de cuotas: 36"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.1)/36)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.1)
												
											2:
												
												Imprimir "Tasa de interes: 15%"
												Imprimir "numero de cuotas: 48"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.15)/48)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.15)
												
											3:
												
												Imprimir "Tasa de interes: 25%"
												Imprimir "numero de cuotas: 120"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.25)/120)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.25)
												
											4:
												
												Imprimir "Tasa de interes: 30%"
												Imprimir "numero de cuotas: 240"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.3)/240)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.3)
												
											5:
												
												Imprimir "Tasa de interes: 50%"
												Imprimir "numero de cuotas: 300"
												Imprimir "Valor de cuota: $",redon(((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.5)/300)
												Imprimir "Valor total del credito: $", redon((credSolicitado[n] - credSolicitado[n] * 0.2 ) + credSolicitado[n] * 0.5)
												
										FinSegun
										
									FinSi
									
								FinSi
								
								
								
							FinPara
							
					FinSegun
					
			FinSegun
			
		Hasta Que resVolver = 2
		
	Hasta Que j > 4
	
FinAlgoritmo
