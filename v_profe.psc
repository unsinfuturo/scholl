Algoritmo campeonato_nacional_plan_vital
	
	Dimension Team[16];
	Dimension punt[16];
	
	
	Repetir
		
		Imprimir "-------------------------------------"
		Imprimir "Campeonato Nacional Plan Vital 2022"
		Imprimir "-------------------------------------"
		Imprimir "1. Ingreso los equipos en competencia"
		Imprimir "2. Ingrese el resultado de los partidos de local"
		Imprimir "3. Ingrese el resultado de los partidos de visita"
		Imprimir "4. Despliege la tabla de posiciones"
		Imprimir "5. Indique el equipo campeon y los descendentes"
		Imprimir "6. Indique los equipos que juegan copa libertadores"
		Imprimir "7. Indique los equipos copa sudamericana"
		Leer opc
		
		Segun opc Hacer
			
			1:
				
				Para i=0 Hasta 15 Con Paso 1 Hacer
					
					imprimir "Ingrese equipo n°", i + 1
					Leer Team[i];
					
				FinPara
				
			2:
				
				Para j=0 Hasta 15 Con Paso 1 Hacer
					
					Imprimir "Ingrese resultados de los partidos de local de el equipo ", Team[j]
					Imprimir "--------------------------------------------"
					
					Para k =0 Hasta 15 Con Paso 1 Hacer
						
						si j <> k Entonces
							
							Imprimir "--------------------------------------------"
							Imprimir Team[j], " vs ", Team[k]
							Imprimir "--------------------------------------------"
							Imprimir ""
							Escribir "Ingrese los goles de ", Team[j];
							Leer point
							Escribir "Ingrese los goles de ", Team[k];
							Leer vs_point
							
							si point > vs_point Entonces
								
								punt[j] = punt[j] + 3
								
							SiNo
								
								si point = vs_point Entonces
									
									punt[j] = punt[j] + 1
									
								SiNo
									
									punt[j] = punt[j] - 1
									
								FinSi
								
								
							FinSi
							
						FinSi
						
					FinPara
					
				FinPara
				
				Para i=0 Hasta 15 Con Paso 1 Hacer
					Imprimir team[i], " ", punt[i]
				FinPara
				
			3:	
				
				Para j=0 Hasta 15 Con Paso 1 Hacer
					
					Imprimir "Ingrese resultados de los partidos de visita de el equipo ", Team[j]
					Imprimir "--------------------------------------------"
					
					Para k =0 Hasta 15 Con Paso 1 Hacer
						
						si j <> k Entonces
							
							Imprimir "--------------------------------------------"
							Imprimir Team[j], " vs ", Team[k]
							Imprimir "--------------------------------------------"
							Imprimir ""
							Escribir "Ingrese los goles de ", Team[j];
							Leer point
							Escribir "Ingrese los goles de ", Team[k];
							Leer vs_point
							
							si point > vs_point Entonces
								
								punt[j] = punt[j] + 3
								
							SiNo
								
								si point = vs_point Entonces
									
									punt[j] = punt[j] + 1
									
								SiNo
									
									punt[j] = punt[j] - 1
									
								FinSi
								
								
							FinSi
							
						FinSi
						
					FinPara
					
				FinPara
				
			4:
				
				k=0
				
				Mientras K <= 14
					j = k + 1
					Mientras  j <= 15
						
						si punt[k]< punt[j] Entonces
							aux = punt[k]
							punt[k] = punt[j]
							punt[j] = aux
							
							wa = Team[k]
							Team[k] = Team[j]
							Team[j] = wa
							
						FinSi
						
						j = j + 1
						
					FinMientras
					
					k = k + 1
				FinMientras
				
				Para k = 0 hasta 15 Con Paso  1 Hacer
					Imprimir Team[k] " ", punt[k] 
				FinPara
				
		FinSegun
		
	Hasta Que opc > 7 o opc < 1 
	
	
FinAlgoritmo
