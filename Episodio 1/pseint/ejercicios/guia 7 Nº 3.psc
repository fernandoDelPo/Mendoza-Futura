Algoritmo sin_titulo
	//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario)
	//realizar un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos
	//otro subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar
	//la matriz y los resultados por pantalla.
	Definir matriz, N, M Como Entero
	Escribir "Ingrese la cardinalidad de n y m de la Matriz"
	Leer N, M
	Dimension matriz(N,M)
	llenarmatriz(matriz, N, M)
	sumarelementos(matriz, N,M)
		
FinAlgoritmo

//------------------------------------------------------------------------
SubProceso llenarmatriz(matriz, N, M)
	Definir i, j Como Entero
	Para i=0 Hasta N-1 Hacer
		Para j=0 Hasta M-1 Hacer
			matriz[i,j] = Aleatorio(0,100)
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//------------------------------------------------------------------------
SubProceso sumarelementos(matriz, N, M)
	Definir i, j, suma Como Real
	Escribir ""
	suma=0
	Para i=0 Hasta N-1 Hacer
		Para j=0 Hasta M-1 Hacer
			suma=suma+matriz[i,j]
		FinPara
	FinPara
	Escribir "La suma de los SUBINDICES es:"
	Escribir Sin Saltar " [", suma, "] "
	Escribir ""
FinSubProceso
