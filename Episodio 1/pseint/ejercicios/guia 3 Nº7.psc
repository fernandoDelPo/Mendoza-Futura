Algoritmo sin_titulo
	
	
	
	definir pala, espacio Como Caracter
	definir size, i Como Entero
	definir cade, cade1 como cadena
	
	Escribir"Ingrese un texto" sin saltar
	leer pala
	espacio=" "
	size=Longitud(pala)
	i=0
	
	
	
	
	Para i<-0 Hasta size Con Paso 1 Hacer
		
		
		size=Longitud(pala)
		cade=Subcadena(pala, i,i)
		cade1=espacio
		Escribir sin saltar Concatenar(cade, cade1)
		
		
		
		
	FinPara
	
	
FinAlgoritmo
