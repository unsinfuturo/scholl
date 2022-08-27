Algoritmo excercise15
	
	Dimension tra[10];
	
	Para i=1 Hasta 10 Hacer
		
		Repetir
			
			
			Imprimir "Ingrese sueldo de el trabajador n° ", i 
			leer tra[i]
			
			si tra[i] < 50 Entonces
				
				Imprimir "Sueldo invalido"
				Imprimir "-------------------------------------------"
				si i > 1 Entonces
					i = i - 1
				FinSi
				
			FinSi
			
	
		Hasta Que tra[i] >= 50
	
	FinPara
	
	Para i = 1 Hasta 10
		numa = tra[i]
		num1 = 0
		num2 = 0
		num3 = 0
		num4 = 0
		num5 = 0
		num6 = 0
		num7 = 0
		num8 = 0
		
		si numa >= 20000
			
			num1 = trunc[numa / 20000]
			numa = numa - (numa*num1)
			
		FinSi
		
		si numa >= 10000
			
			num2 = trunc[numa / 10000]
			numa =  numa - (numa*num2)
			
		FinSi
		
		si numa >= 5000
			
			num3 = trunc[numa / 5000]
			numa =  numa - (numa*num3)
			
		FinSi
		
		si numa >= 2000
			
			num4 = trunc[numa / 2000]
			numa =  numa - (numa*num4)
			
		FinSi
		
		si numa >= 1000
			
			num5 = trunc[numa / 1000]
			numa =  numa - (numa*num5)
			
		FinSi
		
		si numa >= 500
			
			num6 = trunc[numa / 500]
			numa = numa - (numa*num6)
			
		FinSi
		
		si numa >= 100
			
			num7 = trunc[numa / 100]
			numa = numa - (numa*num7)
			
		FinSi
		
		si numa >= 50
			
			num8 = trunc[numa / 50]
			numa = numa - (numa*num8)
			
		FinSi
		
		Imprimir "---------------------------------------------------------------------------"
		Imprimir "Trabajador n°", i
		Imprimir "El numero de billetes de $20000 es ", num1
		Imprimir "El numero de billetes de $10000 es ", num2
		Imprimir "El numero de billetes de $5000 es ", num3
		Imprimir "El numero de billetes de $2000 es ", num4
		Imprimir "El numero de billetes de $1000 es ", num5
		Imprimir "El numero de monedas de $500 es ", num6
		Imprimir "El numero de monedas de $100 es ", num7
		Imprimir "El numero de monedas de $50 es ", num8
	FinPara
	
	
FinAlgoritmo
