Algoritmo sin_titulo
	//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por
	//el usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
	//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra.
	//En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
	
	Definir num, matriz, fila, columna como entero
	Dimension matriz[5,5]
	
	llenarmatriz(matriz)
	encontrarnumero(matriz)
	
FinAlgoritmo

//------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 hasta 5-1 Hacer
		Para j=0 Hasta 5-1 Hacer
			matriz[i,j]=Aleatorio(0,50)
			Escribir  " [" matriz[i,j] "] " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//------------------------------------------------------------------
SubProceso encontrarnumero(matriz)
	Definir i, j, num, contador Como Real
	contador=0
	Escribir "Ingrese un número entre 0 y 20 para buscar dentro de los SUBINDICES de la MATRIZ"
	leer num
	
	Para i=0 Hasta 5-1 Hacer
		Para j=0 Hasta 5-1 Hacer
			Si matriz[i,j]=num Entonces
				Escribir "El número se encuentra en la FILA [", i, "] - COLUMNA [", j, "] de la MATRIZ"
			SiNo
				contador=contador+1
			FinSi
		FinPara
	FinPara
	Si contador >= 25 Entonces
		Escribir "El número seleccionado no se encuentra alojado en la matriz."
	FinSi
FinSubProceso





