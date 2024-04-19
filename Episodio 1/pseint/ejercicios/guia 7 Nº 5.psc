Algoritmo sin_titulo
	//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
	//encontrando la manera de que la frase se muestre de manera continua en la matriz.
	//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
	//	H A B
	//	I L I
	//	D A D
	//Nota: recordar el uso de la función Subcadena().
	Definir matriz Como cadena
	Dimension matriz[3,3]
	llenarmatriz(matriz)
	mostrarmatriz(matriz)
		
FinAlgoritmo

//-----------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j, tamano, contador Como Entero
	Definir pala Como cadena
	Escribir "Ingrese una palabra de 9 letras para llenar la matriz"
	leer pala
	tamano=Longitud(pala)
	contador=0
	
		si tamano=9 Entonces
			Para i=0 Hasta 3-1 Hacer
				Para j=0 Hasta 3-1 Hacer
					matriz[i,j] = Subcadena(pala, contador, contador)
					contador=contador+1
				FinPara
			FinPara
		SiNo
			Si tamano<>9-1 Entonces
			Escribir "La palabra ingresada no tiene 9 letras"
			llenarmatriz(matriz)
		Finsi
	FinSi
FinSubProceso

//--------------------------------------------------------------------
SubProceso mostrarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 hasta 3-1 Hacer
		Para j=0 Hasta 3-1 Hacer
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso







