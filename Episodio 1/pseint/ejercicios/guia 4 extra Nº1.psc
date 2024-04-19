
	SubProceso convertirEspaciado(pala Por Referencia)
	Definir cade1,cade, espacio Como Caracter
	Definir size, i Como Real
	
	espacio=" "
	size=Longitud(pala)
	cade=Subcadena(pala, 0,0)
	
	
	Para i<-0 Hasta size Con Paso 1 Hacer
		size=Longitud(pala)
		cade=Subcadena(pala, i,i)
		cade1=espacio
		Escribir sin saltar Concatenar(cade, cade1)
	FinPara
	pala=Concatenar(cade, cade1)
		
		
FinSubProceso


Algoritmo sin_titulo
	//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y
	//muestra una cadena con un espacio adicional tras cada letra.
	//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se
	//use dicho procedimiento.
	
	Definir pala Como Caracter
	
	Escribir "Ingrese un texto"
	leer pala
	
	convertirEspaciado(pala)
	Escribir pala
	
	
	
	
	
	
FinAlgoritmo
