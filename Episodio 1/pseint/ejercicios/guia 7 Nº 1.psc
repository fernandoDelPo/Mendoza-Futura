Algoritmo sin_titulo
	//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el
	//usuario y los muestre por pantalla.
	Definir matriz Como Entero
	Dimension matriz[3,3]
	llenarMatriz(matriz)
	mostrarMatriz(matriz)
FinAlgoritmo


//----------------------------------------------------------------
SubProceso llenarMatriz(matriz)
	Escribir  "Ingrese los valores de los elementos de la MATRIZ"
	Definir i, j Como Entero
	
	Para i=0 Hasta 2 Hacer
		Para j=0 hasta 2 Hacer
			leer matriz[i,j]
		FinPara
	FinPara
	Escribir ""
FinSubProceso


//---------------------------------------------------------------
SubProceso mostrarMatriz(matriz)
	Definir i, j Como Entero
	
	Para i=0 Hasta 2 Hacer
		Para j=0 Hasta 2 Hacer
			Escribir " [" matriz[i,j] "] " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
