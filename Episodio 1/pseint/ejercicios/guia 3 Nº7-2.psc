Algoritmo sin_titulo
	
	//Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
	//espacio entre cada letra. La frase se mostrara así: H o l a. Nota: recordar el
	//funcionamiento de la función Subcadena().
	
	
	definir pala, espacio Como Caracter
	definir size, i  Como Entero
	definir cade, cade1, cade3 como cadena
	pala=""
	Escribir  "Ingrese el texto" sin saltar
	Mientras pala<>"Salir"
		
		
		
		leer pala
		espacio=" "
		size=Longitud(pala)
		cade=Subcadena(pala, 0,0)
		
		
		Para i<-0 Hasta size Con Paso 1 Hacer
			size=Longitud(pala)
			cade=Subcadena(pala, i,i)
			cade1=espacio
			Escribir sin saltar Concatenar(cade, cade1)
		FinPara
	
	FinMientras
	
FinAlgoritmo
