Algoritmo Arreglo_trabajadores
	
	Repetir
		
		Imprimir "Ingrese numero de trabajadores"
		leer n
		
		si n < 0 Entonces
			Imprimir "Numero invalido"
		FinSi
	Hasta Que n > 0
	
	
	Dimension sal[n];
	Dimension nom[n];
	Dimension cor[n];
	Dimension eda[n];
	
	Para i=1 Hasta n Hacer
		
		Imprimir "Ingresar nombre de el trabajador n°", i
		Leer nom[i]
		
		Repetir
			
			Imprimir "Ingresar ingresos de el trabajador n°", i
			Leer sal[i]
			
			si sal[i] < 0 Entonces
				Imprimir "Numero invalido"
			FinSi
			
		Hasta Que sal[i] > 0
	
		
		Imprimir "Ingrese correo de el trabajador n°", i
		Leer cor[i]
		
		Repetir
			
			Imprimir "Ingrese edad de el trabajador n°", i
			leer eda[i]
			
			si eda[i] < 0 Entonces
				Imprimir "Numero invalido"
			FinSi
			
		Hasta Que sal[i] > 0
	
	
		
	FinPara
	
	para i = 1 Hasta n Hacer
		Imprimir "-----------------------------------"
		Imprimir nom[i]
		Imprimir "-----------------"
		Imprimir "Ingresos: ", sal[i]
		Imprimir "Correo: ", cor[i]
		Imprimir "Edad: ", eda[i]
	FinPara
	
	Para i = 1 Hasta n Hacer
		Para m = 1 Hasta (n-1) Hacer
			si (eda[m]>eda[m + 1]) Entonces
				
				c1 = eda[m];
				eda[m] = eda[m + 1]
				eda[m + 1] = c1
			FinSi
		FinPara
	FinPara
	
	Imprimir "-----------------------------"
	Imprimir "Edades de menor a mayor"
	Imprimir "------------------------------"
	
	para i = 1 Hasta n Hacer
		Imprimir eda[i]
	FinPara
FinAlgoritmo
