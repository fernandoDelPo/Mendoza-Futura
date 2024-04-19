Algoritmo sin_titulo
	//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las
	//dos primeras columnas contendrán valores enteros ingresados por el usuario y en la 3
	//columna se deberá almacenar el resultado de sumar el número de la primera y segunda
	//columna. Mostrar la matriz de la siguiente forma:
	// 3 + 5 = 8
	// 4 + 3 = 7
	// 1 + 4 = 5
	
	Definir matriz, f Como Entero
	Escribir "Ingrese la cantidad de filas de su MATRIZ"
	leer f
	Dimension matriz[f,3]
	llenarmatriz(matriz, f)
	sumacol(matriz, f)
	
FinAlgoritmo

//-------------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz, f)
	Definir i, j Como Entero
	Escribir "Ingrese los valores de las primeras dos columnas de la MATRIZ"
	Escribir ""
	Para i=0 hasta f-1 Hacer
		Para j=0 Hasta 3-2 Hacer
			leer matriz[i,j]
		FinPara
	FinPara
FinSubProceso

//-------------------------------------------------------------------------------------
SubProceso sumacol(matriz, f)
	Definir i, j, suma Como Entero
	Escribir ""
	Escribir "La suma de las dos primeras columas es: "
	Escribir ""
	Para i=0 hasta f-1 Hacer
		Para j=0 hasta 3-1 Hacer
			suma=matriz[i,0]+matriz[i,1]
			si j=0 Entonces
				Escribir Sin Saltar" [", matriz[i,j], "]  + "
			Sino 
				si j>0 y j<3-1 Entonces
					Escribir sin saltar " [", matriz[i,j], "] "
				Sino 
					si j=3-1 Entonces
						Escribir Sin Saltar " =  [", suma, "] "
					FinSi
				FinSi
			FinSi
		FinPara
		Escribir ""
	FinPara
FinSubProceso
