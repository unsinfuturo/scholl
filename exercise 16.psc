Algoritmo exercise16
	
	i = 3
	
	Imprimir "Crea una contraseņa"
	leer cont_R
	Repetir
		
		Imprimir "Ingrese su contraseņa"
		Leer cont
		
		Si cont <> cont_R
			try = try + 1
			i = i - 1
			Imprimir "Quedan ", i " intentos"
			
		SiNo
			
			Imprimir "Contraseņa correcta"
			try = 4
			
		FinSi
	
		
	Hasta Que try = 3
	
	si try = 3 Entonces
		Imprimir "---------------------------------"
		imprimir "Su clave a sido blockeada"
	FinSi
	
FinAlgoritmo