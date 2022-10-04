Algoritmo sin_titulo
	
	Definir opcMenu,opcCredito,tipoCredito,sue Como Entero
	Definir nomCliente, apeCliente, Run Como Caracter
	
	
	Dimension tipoCredito[5];
	Dimension nomCliente[5];
	Dimension apeCliente[5];
	Dimension run[5];

	

	
	Imprimir "Bienvenido a el administrador de las cotizaciones"
	
	
	Imprimir "Ingrese nombre"
	Leer nomCliente[i]
	Imprimir "Ingrese apellido"
	leer apeCliente[i]
	Imprimir "Ingrese Run"
	leer run[i]
		
	Repetir
		
		Imprimir "---------------------------------------"
		Imprimir "1. Seleccionar tipo de crédito"
		Imprimir "2. Mostrar información de credito"
		Imprimir "3. lista de clientes"
		Imprimir "4. buscar cliente"

		leer opcMenu 
		
		Segun opcMenu Hacer
			
			1:
				Repetir
					
					Imprimir "Seleccione tipo de credito"
					Imprimir "----------------------------------"
					Imprimir "1. Automotriz"
					Imprimir "2. Hipotecaria"
					Leer opcCredito
					
				Hasta Que opcCredito > 0 y opcCredito < 3
				
				Segun opcCredito
					
					1:
						Imprimir "ingrese sueldo"
						leer sue
						
						si sue > 1000000 Entonces
							
							Repetir
								
								Imprimir "Credito minimo = $10000000"
								Imprimir "Credito Maximo = $20000000"
								leer credSolicitado
								
							Hasta Que credSolicitado >= 10000000 y credSolicitado <= 20000000
							
							
							
						SiNo
							
							Imprimir "Sueldo insuficiente"
							
						FinSi
						
				FinSegun
				
			2:
				Imprimir nomCliente[i];
				Imprimir apeCliente[i];
				Imprimir run[i];
				
				
			3:
				
			4:
				
		FinSegun
		
	Hasta Que opc > 0 y opc < 5
		
FinAlgoritmo
