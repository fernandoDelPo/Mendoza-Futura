Algoritmo sin_titulo
	//Realizar un programa que permita visualizar el resultado del producto de una matriz de
	//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
	//inicializarse evitando así el ingreso de datos por teclado.
	Definir vector, matriz Como Entero
	Dimension vector[3]
	Dimension matriz[3,3]
	
	llenarmatriz(matriz)
	llenarvector(vector)
	multiplicar(matriz, vector)
	
FinAlgoritmo

//----------------------------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j Como Entero
	Escribir "MATRIZ"
	Para i=0 Hasta 3-1 Hacer
		Para j=0 Hasta 3-1 Hacer
			matriz[i,j]=Aleatorio(1,10)
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//---------------------------------------------------------------------------------------------------
SubProceso llenarvector(vector)
	Definir i Como Entero
	Escribir ""
	Escribir "VECTOR"
	Para i=0 hasta 3-1 Hacer
		vector[i]=Aleatorio(1,10)
		Escribir Sin Saltar " [", vector[i], "] "
	FinPara
	Escribir ""
FinSubProceso

//-----------------------------------------------------------------------------------------------------
SubProceso multiplicar(matriz, vector)
	Definir i, j, resultado Como Entero
	Escribir ""
	Escribir "MULTIPLICACION VECTOR * MATRIZ"
	Para i=0 Hasta 3-1 Hacer
		resultado=0
		Para j=0 Hasta 3-1 Hacer
			resultado = matriz[i,j] * vector[j]
			Escribir sin saltar " [", resultado, "] "
			resultado=0
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	