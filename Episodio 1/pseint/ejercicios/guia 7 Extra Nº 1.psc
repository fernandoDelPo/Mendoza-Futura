Algoritmo sin_titulo
	//Realizar un programa que rellene de números aleatorios una matriz a través de un
	//subprograma y generar otro subprograma que muestre por pantalla la matriz final.
	Definir matriz, f, c Como Entero
	Escribir "Ingrese la cardinalidad de f y c de la Matriz"
	Leer f, c
	Dimension matriz[f,c]
	llenarmatriz(matriz, f, c)
	
FinAlgoritmo

//---------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz, f, c)
	Definir i, j Como Entero
	Para i=0 Hasta f-1 Hacer
		Para j=0 hasta c-1 Hacer
			matriz[i,j] = Aleatorio(0,50)
		FinPara
	FinPara
	mostrarmatriz(matriz, f, c)
FinSubProceso

//---------------------------------------------------------------------------------
SubProceso mostrarmatriz(matriz, f, c)
	Definir i, j Como Entero
	Para i=0 hasta f-1 Hacer
		Para j=0 Hasta c-1 Hacer
			Escribir sin saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso
	