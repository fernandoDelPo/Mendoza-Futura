Algoritmo sin_titulo
	//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos
	//y ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna
	//de ceros.
	//Por ejemplo, nuestro matriz final debería verse así:
	// 111111111111111
	// 100000000000001
	// 100000000000001
	// 100000000000001
	// 111111111111111
	Definir matriz, i, j Como Entero
	Dimension matriz[5,15]
	
	Para i=0 hasta 5-1 Hacer
		Para j=0 Hasta 15-1 Hacer
			Si i>0 y i<5-1 y j>0 y j<15-1 Entonces
				Escribir Sin Saltar "0"
			SiNo
				Escribir Sin Saltar "1"
			FinSi
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
