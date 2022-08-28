Algoritmo sintitulo
	
	Repetir
		
		Imprimir "Ingresar numero de comensales"
		leer per
		
		si per < 1 o trunc(per) - per <> 0 Entonces
			
			Imprimir "Numero Invalido"
			
		FinSi
		
	Hasta Que per > 0 y trunc(per) - per = 0
	
	Imprimir "Numero de comensales"
	Imprimir "1. Menos de 50"
	Imprimir "2. Menos de de 100"
	Imprimir "3. Menos de de 200"
	Imprimir "4. Mas de 200"
	leer opc
	
	Imprimir "Menus pedidos"
	leer num
	
	segun opc Hacer
		
		1: 
			res = 19500 * num
			
		2:
			res = 17000 * num
			
		3:
			res = 15500 * num
			
		4:
			res = 13500 * num
			
		De Otro Modo:
			
		 Imprimir "Opcion no válida"
			
	FinSegun
	
	Imprimir "El precio total es de ", res
	
	
FinAlgoritmo
