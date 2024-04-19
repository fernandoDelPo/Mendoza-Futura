Algoritmo sin_titulo
	//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la
	//diagonal principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe
	//generar otro subproceso para imprimir la matriz.
	Definir matriz Como Entero
	Dimension matriz[4,4]
	
	llenarmatriz(matriz)
	mostrarmatriz(matriz)
	
FinAlgoritmo

//-----------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 hasta 4-1 Hacer
		Para j=0 Hasta 4-1 Hacer
			Si i=j Entonces
				matriz[i,j] = 0
			SiNo
				matriz[i,j] = Aleatorio(0,50)
			FinSi
		FinPara
	FinPara
FinSubProceso

//------------------------------------------------------------
SubProceso mostrarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 Hasta 4-1 Hacer
		Para j=0 Hasta 4-1 Hacer
			Escribir sin saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso
	