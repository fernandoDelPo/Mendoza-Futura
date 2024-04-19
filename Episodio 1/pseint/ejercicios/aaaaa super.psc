Algoritmo sin_titulo

		//Una empresa de venta de productos por correo desea realizar una estadística de las
		//ventas realizadas de cada uno de sus productos a lo largo de una semana. Distribuya
		//luego 5 productos en los 5 días hábiles de la semana. Se desea conocer:
		// a. Total de ventas por cada día de la semana.
		// b. Total de ventas de cada producto a lo largo de la semana.
		// c. El producto más vendido en cada semana.
		// d. El nombre, el día de la semana y la cantidad del producto más vendido.
		Definir matriz Como Entero
		Dimension matriz[8,7]
		
		llenarmatriz(matriz)
		
		
		
		
FinAlgoritmo

//--------------------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j, maxsemana, maxdia Como Entero
	Para i=1 Hasta 5 Hacer
		Para j=1 Hasta 5 Hacer
			matriz[i,j]=Aleatorio(10,99)
		FinPara
	FinPara
	
	matriz[0,0] =00
	matriz[6,6] =00
	matriz[7,6] =00
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
	
	//Producto más vendido cada semana
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
		maxdia=0
		Para i=1 Hasta 5 Hacer
			Si matriz[i,j] > maxdia Entonces
				maxdia = matriz[i,j]
			SiNo
				maxdia=maxdia
			FinSi
			matriz[7,j] = maxdia
		FinPara
		Para i=1 Hasta 5 Hacer
			Si j=1 y matriz[i,j] = maxdia Entonces
				Escribir "El Producto Nº ",i, " fue el más vendido el día LUNES"
			SiNo
				si j=2 y matriz[i,j] = maxdia Entonces
					Escribir "El Producto Nº ",i, " fue el más vendido el día MARTES"
				SiNo
					si j=3 y matriz[i,j] = maxdia Entonces
						Escribir "El Producto Nº ",i, " fue el más vendido el día MIERCOLES"
					SiNo
						si j=4 y matriz[i,j] = maxdia Entonces
							Escribir "El Producto Nº ",i, " fue el más vendido el día JUEVES"
						SiNo
							si j=5 y matriz[i,j] = maxdia Entonces
								Escribir "El Producto Nº ",i, " fue el más vendido el día VIERNES"
							FinSi
						FinSi
					FinSi
				FinSi
		FinSi
		FinPara

	FinPara
	Escribir ""
	
	
	mostrarmatriz(matriz)
	
	
FinSubProceso

Subproceso mostrarmatriz(matriz)
	Definir i, j Como Entero
	Para i=0 Hasta 8-1 Hacer
		Para j=0 Hasta 7-1 Hacer
			si i=0 y j=1 Entonces
				Escribir Sin Saltar "              LUNES"
			Sino 
				si i=0 y j=2 Entonces
					Escribir Sin Saltar " MARTES "
				SiNo
					si i=0 y j=3 Entonces
						Escribir Sin Saltar "MIERCOLES"
					SiNo
						si i=0 y j=4 Entonces
							Escribir Sin Saltar " JUEVES "
						SiNo
							si i=0 y j=5 Entonces
								Escribir Sin Saltar " VIERNES "
							SiNo
								si i=0 y j=6 Entonces
									Escribir Sin Saltar "TOTAL SEMANA "
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir ""
	
	Para i=1 Hasta 5 Hacer
		Para j=0 Hasta 6 Hacer
			Si j=0 Entonces
				Escribir Sin Saltar "Porducto Nº", i
			sino 
				Escribir  Sin Saltar"  [", matriz[i,j], "]  "
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i=6 hasta 6 Hacer
		Para j=0 hasta 6 Hacer
			Si j=0 Entonces
				Escribir sin saltar "Total DIARIO "
			SiNo
				Escribir Sin Saltar" [", matriz[i,j], "]  "
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i=7 hasta 7 Hacer
		Para j=0 Hasta 6 Hacer
			Si j=0 Entonces
				Escribir sin saltar "MAS vendido "
			Sino 
				Escribir Sin Saltar"  [", matriz[i,j], "]  "
			FinSi
		FinPara
		Escribir ""
	FinPara	
	Escribir ""
FinSubProceso


