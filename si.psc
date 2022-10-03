Algoritmo sin_titulo
	Definir serJugador, nomJugador, apeJugador, rutJugador Como Caracter
	Definir edad, opc Como Entero
	Dimension serJugador[11];
	Dimension nomJugador[11];
	Dimension apeJugador[11];
	Dimension rutJugador[11];
	Dimension edaJugador[11];
	
	//Identacion 
	
	Imprimir " Bienvenido al sistema de Jugadores"
	
	Repetir
		
		Escribir "-------------------------------------"
		Escribir "1. Ingreso de jugadores"
		Escribir "2. Listado de jugadores"
		Escribir "3. Buscar jugadores"
		Escribir "4. Salir del sistema"
		Escribir "-------------------------------------"
		Escribir " Selecione una opción"
		Leer opc 
		
		Segun opc
			
			1:
				
				Para i=0 Hasta 11 Con Paso 1 Hacer
					
					Escribir "Ingrese nombre"
					Leer nomJugador[i];
					Escribir "Ingrese el apellido"
					Leer apeJugador[i];
					
					
					Repetir
						
						Escribir "ingrese la edad del jugador"
						Leer edaJugador[i];
						
					Hasta Que edaJugador[i] >= 13 y edaJugador[i] <= 35
					
					si edaJugador[i] >= 13 y edaJugador[i] <= 15 Entonces
						serJugador[i] = "sub 15"
					FinSi
					
					si edaJugador[i] >= 18 y edaJugador[i] <= 20 Entonces
						serJugador[i] = "sub 17"
					FinSi
					
					si edaJugador[i] >= 21 y edaJugador[i] <= 35 Entonces
						serJugador[i] = "profesional"
					FinSi
					
				FinPara
				
			2:
				
			3:
				
			4:
			
		FinSegun
		
	Hasta Que opc > 0 y opc < 5
	
FinAlgoritmo
