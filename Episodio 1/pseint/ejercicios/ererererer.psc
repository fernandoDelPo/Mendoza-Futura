Algoritmo sin_titulo
	//Una empresa de venta de productos por correo desea realizar una estad�stica de las
	//ventas realizadas de cada uno de sus productos a lo largo de una semana. Distribuya
	//luego 5 productos en los 5 d�as h�biles de la semana. Se desea conocer:
	// a. Total de ventas por cada d�a de la semana.
	// b. Total de ventas de cada producto a lo largo de la semana.
	// c. El producto m�s vendido en cada semana.
	// d. El nombre, el d�a de la semana y la cantidad del producto m�s vendido.
	Definir matriz Como Entero
	Dimension matriz[8,7]
	
	llenarmatriz(matriz)
	
	
	
	
FinAlgoritmo

//--------------------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j, maxsemana, maxdia Como Entero
	Para i=1 Hasta 5 Hacer
		Para j=1 Hasta 5 Hacer
			matriz[i,j]=Aleatorio(0,100)
		FinPara
	FinPara

	matriz[0,0] =00
	matriz[6,6] =00
	//Total de venta semana por producto
	matriz[1,6] = matriz[1,1]+matriz[1,2]+matriz[1,3]+matriz[1,4]+matriz[1,5] // Total Producto 1
	matriz[2,6] = matriz[2,1]+matriz[2,2]+matriz[3,3]+matriz[2,4]+matriz[2,5] // Total Producto 2
	matriz[3,6] = matriz[3,1]+matriz[3,2]+matriz[3,3]+matriz[3,4]+matriz[3,5] // Total Producto 3
	matriz[4,6] = matriz[4,1]+matriz[4,2]+matriz[4,3]+matriz[4,4]+matriz[4,5] // Total Producto 4
	matriz[5,6] = matriz[5,1]+matriz[5,2]+matriz[5,3]+matriz[5,4]+matriz[5,5] // Total Producto 5
	
	//Total ventas por cada dia de la semana
	matriz[6,1] = matriz[1,1]+matriz[1,2]+matriz[1,3]+matriz[1,4]+matriz[1,5] //Total Lunes
	matriz[6,2] = matriz[1,2]+matriz[2,2]+matriz[2,3]+matriz[2,4]+matriz[2,5] //Total Martes
	matriz[6,3] = matriz[1,3]+matriz[2,3]+matriz[3,3]+matriz[4,3]+matriz[5,3] // Total Miercoles
	matriz[6,4] = matriz[1,4]+matriz[2,4]+matriz[3,4]+matriz[4,4]+matriz[5,4] //Total jueves
	matriz[6,5] = matriz[1,5]+matriz[2,5]+matriz[3,5]+matriz[4,5]+matriz[5,5] //Total viernes
	
	//Producto m�s vendido cada semana
	maxsemana=0
	Para i=1 hasta 5 Hacer
		Para j=6 hasta 6 Hacer
			Si matriz[i,j] > maxsemana Entonces
				maxsemana = matriz[i,j]
			Sino 
				maxsemana=maxsemana
			FinSi
		FinPara
	FinPara
	
	//Producto mas vendido LUNES
	maxdia=0
	Para j=1 Hasta 5 Hacer
		Para i=1 Hasta 5 Hacer
			Si matriz[i,j] > maxdia Entonces
				maxdia = matriz[i,j]
			SiNo
				maxdia=maxdia
			FinSi
			matriz[7,j] = maxdia
		FinPara
	FinPara
	
	
	mostrarmatriz(matriz)
	
	
FinSubProceso

Subproceso mostrarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 Hasta 8-1 Hacer
		Para j=0 Hasta 7-1 Hacer
			Si j=0 y i<>0 y i<6 Entonces
				Escribir "Producto ", i
			Sino 
				si i=0 y j=1 Entonces
					Escribir Sin Saltar "LUNES"
				Sino 
					si i=0 y j=2 Entonces
						Escribir Sin Saltar "MARTES"
					SiNo
						si i=0 y j=3 Entonces
							Escribir Sin Saltar "MIERCOLES"
						SiNo
							si i=0 y j=4 Entonces
								Escribir Sin Saltar "JUEVES"
							SiNo
								si i=0 y j=5 Entonces
									Escribir Sin Saltar "VIERNES"
								SiNo
									si i=0 y j=6 Entonces
										Escribir Sin Saltar "TOTAL SEMANA"
									SiNo
										si i=6 y j=0 Entonces
											Escribir "TOTAL DIARIO  "
										SiNo
											si i=0 y j=7 Entonces
												Escribir "PRODUCTO MAS VENDIDO "
											SiNo
												Escribir  Sin Saltar" [", matriz[i,j], "] "
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	
	
	
	
	
FinSubProceso
	