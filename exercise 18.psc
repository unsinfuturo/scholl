Algoritmo exercise18
	i = 1
	a = 1
	
	Imprimir "Numero de estudiantes"
	Leer n
	
	Dimension est[n]
	Dimension al[n]
	Dimension pe[n]
	
	
	Repetir
		
		Imprimir "Ingresar altura M. de estudiante n°", i
		leer al[i]
		
		Imprimir "Ingrese Peso kg. de estudiante n°", i
		leer pe[i]
		
		Repetir
			
			Imprimir "Ingrese sexo de el estudiante"
			Imprimir "1.Hombre"
			Imprimir "2.Mujer"
			leer Sx
			
			si Sx > 2 o Sx < 1
				Imprimir "Opcion invalida"
			FinSi
			
		Hasta Que Sx < 3 y Sx > 0 
		
		i = i + 1
		
	Hasta Que i > n 
	
	Repetir
		
		IMC = pe[a] / (al[a] * al[a])
		
		si IMC < 18.5 Entonces
			
			BJ= BJ + 1
			
			Si Sx = 1 Entonces
				
				BJ_M = BJ_M  + 1
				
			SiNo
				
				BJ_F = BJ_F  + 1
				
			FinSi
			
			
		SiNo
			
			si IMC < 24.9 Entonces
				salu = salu + 1
				
				Si Sx = 1 Entonces
					
					salu_M = salu_M  + 1
					
				SiNo
					
					salu_F = salu_F  + 1
					
				FinSi
				
			SiNo
				
				si IMC < 29.9 Entonces
					
					sobre = sobre + 1
					
					Si Sx = 1 Entonces
						
						sobre_M = sobre_M  + 1
						
					SiNo
						
						sobre_F = sobre_F  + 1
						
					FinSi
					
				SiNo
					
					si imc > 29.9 Entonces
						
						obe = obe + 1
						
						Si Sx = 1 Entonces
							
							obe_M = obe_M  + 1
							
						SiNo
							
							obe_F = obe_F  + 1
							
						FinSi
						
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi
		
		a = a + 1
		
	Hasta Que a > n
	
	si BJ > 0 Entonces
		
		Imprimir "------------------------------"
		Imprimir "Delgado"
		Imprimir ""
		Imprimir "Cantidad: ",BJ   ," PORCENTAJE TOTAL " ((BJ * 100)/n),"%"
		Imprimir "Hombres: ", BJ_M ," PORCENTAJE TOTAL DE HOMBRES " ((BJ_M * 100)/BJ),"%"
		Imprimir "Mujeres: ", BJ_F ," PORCENTAJE TOTAL DE MUJERES  " ((BJ_F * 100)/BJ),"%"
		
		
	FinSi
	
	si salu > 0 Entonces
		Imprimir "------------------------------"
		Imprimir "Saludable"
		Imprimir ""
		Imprimir "Cantidad: ",salu ," PORCENTAJE TOTAL " ((salu * 100)/n),"%"
		Imprimir "Hombres: ", salu_M ," PORCENTAJE TOTAL DE HOMBRES " ((salu_M * 100)/salu),"%"
		Imprimir "Mujeres: ", salu_F ," PORCENTAJE TOTAL DE MUJERES " ((salu_F * 100)/salu),"%"
		
	FinSi
	
	si sobre > 0 Entonces
		
		Imprimir "------------------------------"
		Imprimir "Sobre Peso"
		Imprimir ""
		Imprimir "Cantidad: ",sobre ," PORCENTAJE TOTAL " ((sobre * 100)/n),"%"
		Imprimir "Hombres:  ",sobre_M ," PORCENTAJE TOTAL DE HOMBRES " ((sobre_M * 100)/sobre),"%"
		Imprimir "Mujeres:  ",sobre_F ," PORCENTAJE TOTAL DE MUJERES  " ((sobre_F * 100)/sobre),"%"
		
	FinSi
	
	si obe > 0 Entonces
		
		Imprimir "------------------------------"
		Imprimir "Obeso"
		Imprimir ""
		Imprimir "Cantidad: ", obe ," PORCENTAJE TOTAL " ((obe * 100)/n),"%"
		Imprimir "Hombres:  ",obe_M ," PORCENTAJE TOTAL DE HOMBRES " ((obe_M * 100)/obe),"%"
		Imprimir "Mujeres:  ",obe_F ," PORCENTAJE TOTAL DE MUJERES  " ((obe_F * 100)/obe),"%"
		
	FinSi


	

	
FinAlgoritmo
