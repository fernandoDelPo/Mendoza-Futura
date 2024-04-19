Algoritmo sin_titulo
	//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
	//Inicialice las matrices para evitar el ingreso de datos por teclado.
	Definir matriz1, matriz2 Como Entero
	Dimension matriz1[3,3]
	Dimension matriz2[3,3]
	llenarmatriz(matriz1)
	Escribir ""
	llenarmatriz(matriz2)
	multiplicarmatriz(matriz1, matriz2)
	
FinAlgoritmo

//---------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 Hasta 3-1 Hacer
		Para j=0 Hasta 3-1 Hacer
			matriz[i,j]=Aleatorio(1,10)
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//---------------------------------------------------------------------------------
SubProceso multiplicarmatriz(matriz1, matriz2)
	Definir i, j, resultado Como Entero
	Escribir "El resultado de la MULTIPLICACION es"
	Escribir ""
 	Para i=0 hasta 3-1 Hacer
		Para j=0 Hasta 3-1 Hacer
			resultado=matriz1[i,j]*matriz2[i,j]
			Escribir Sin Saltar " [", resultado, "] "
		FinPara
		Escribir ""
	FinPara	
FinSubProceso
	