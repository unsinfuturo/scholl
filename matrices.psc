Proceso Arreglo
    Dimension A[5,5];
	
    Para i=0 Hasta 4 Con Paso 1 Hacer
        Para j=0 Hasta 4 Con Paso 1 Hacer
            Escribir "Ingresa un numero";
            Leer A[i,j];
			si i = j Entonces
				sum_vert = sum_vert + A[i,j];
			FinSi
			
			si i < j Entonces
				sum_arriba = sum_arriba + A[i,j];
			FinSi
			
			si i - j  = 1 Entonces
				sum_abajo_res = sum_abajo_res +  A[i,j];
			FinSi
			
        FinPara
    FinPara
	
    Para i=0 Hasta 4 Con Paso 1 Hacer            
        Escribir ""; 
        Para j=0 Hasta 4 Con Paso 1 Hacer
            Escribir Sin Saltar A[i,j], " ";
        FinPara  
		
    FinPara
	Escribir " ";
	
	Imprimir "------------------------------------"
	Imprimir "Vector diagonal: ", sum_vert
	Imprimir "Lo que queda de arriba: ", sum_arriba
	Imprimir "Linea diagonal abajo: ", sum_abajo_res
	
	
FinProceso