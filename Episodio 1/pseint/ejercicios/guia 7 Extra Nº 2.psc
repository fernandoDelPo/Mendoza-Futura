Algoritmo sin_titulo
	//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario),
	//llenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta. 
	Definir matriz, transpuesta, f, c Como Entero
	Escribir "Ingrese la cardinalidad de f y c de la Matriz"
	Leer f, c
	Dimension matriz[f,c]
	Dimension transpuesta[c,f]
	llenarmatriz(matriz, transpuesta, f, c)
	
FinAlgoritmo

//---------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz, transpuesta, f, c)
	Definir i, j Como Entero
	Para i=0 Hasta f-1 Hacer
		Para j=0 hasta c-1 Hacer
			matriz[i,j] = Aleatorio(1,100)
		FinPara
	FinPara
	Escribir "MATRIZ ORIGINAL"
	mostrarmatriz(matriz, f, c)
	
	Para i=0 hasta f-1 Hacer
		Para j=0 Hasta c-1 Hacer
			transpuesta[j,i] = matriz[i,j]
		FinPara
	FinPara
	Escribir "MATRIZ TRANSPUESTA"
	mostrarmatriz(transpuesta, c, f)
	
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

//---------------------------------------------------------------------------------

