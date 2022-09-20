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
				
				Para i=0 Hasta 15 Con Paso 1 Hacer
					
					Imprimir "Ingrese resultados de los partidos de local"
					Imprimir "--------------------------------------------"
					Imprimir "Selecciona equipo local"
					Imprimir "--------------------------------------------"

					Para i=0 Hasta 15 Con Paso 1 Hacer
						Imprimir i + 1,". ", Team[i]
					FinPara
					Leer opc1
					
					para i=0 Hasta 14 Con Paso 1 Hacer
						
						Imprimir "Ingrese resultado de partido"
						
						si opc1 - 1 <> i Entonces
							
							Imprimir Team[opc1 - 1] , " VS " , Team[i] 
							Imprimir "----------------------------------"
							Imprimir "Puntos de equipo local: ",Team[opc1 - 1]
							Leer point
							Imprimir "Puntos de equipo contrario: ",Team[i]
							Leer vs_point
							
							si point > vs_point Entonces
								
								punt[opc1 - 1] = punt[opc1 - 1] + 3
								punt[i] = punt[i] - 1
								
							SiNo
								
								si point = vs_point Entonces
									
									punt[opc1 - 1] = punt[opc1 - 1] + 1
									punt[i] = punt[i] + 1
									
								SiNo
									
									punt[opc1 - 1] = punt[opc1 - 1] - 1
									punt[i] = punt[i] + 3
									
								FinSi
								
								
							FinSi
							
						FinSi
						
						
					FinPara
					
					
				FinPara
				
				
		FinSegun
		
	Hasta Que opc > 7 o opc < 1 
	
	
FinAlgoritmo
