Algoritmo exercise16
	
	i = 3
	
	Imprimir "Crea una contrase�a"
	leer cont_R
	Repetir
		
		Imprimir "Ingrese su contrase�a"
		Leer cont
		
		Si cont <> cont_R
			try = try + 1
			i = i - 1
			Imprimir "Quedan ", i " intentos"
			
		SiNo
			
			Imprimir "Contrase�a correcta"
			try = 4
			
		FinSi
	
		
	Hasta Que try = 3
	
	si try = 3 Entonces
		Imprimir "---------------------------------"
		imprimir "Su clave a sido blockeada"
	FinSi
	
FinAlgoritmo