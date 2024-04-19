Algoritmo sin_titulo
	//Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
	//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco
	//zonas: Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene
	//distintas estadísticas sobre el comportamiento de sus representantes en cada zona. Se
	//desea hacer un programa que lea el monto de las ventas de los representantes en cada
	//zona y calcule luego:
	//	a) el total de ventas de una zona introducida por teclado
	//	b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
	//	c) el total de ventas de todos los representantes.
	Definir matriz como entero
	Dimension matriz[7,7]
	
	llenarmatriz(matriz)
	
	
	
	
FinAlgoritmo

//------------------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz)
	Definir i, j, suma Como Entero
	matriz[0,0] =00
	matriz[0,6] =00
	matriz[1,6] =00
	matriz[2,6] =00
	matriz[3,6] =00
	matriz[4,6] =00
	matriz[5,6] =00
	
	Para j=1 Hasta 5-1 Hacer
		Escribir "Ingrese las Ventas del Representante Nº ", j, " en cada una de las cinco zonas."
		Para i=1 Hasta 6-1 Hacer
			leer matriz[i,j]
		FinPara
	FinPara
	
	//SUMA POR ZONA---------------------------------------------------------------------------------------
	suma=0
	Para i=1 hasta 5 Hacer
		suma=0
		Para j=1 Hasta 4 Hacer
			suma=suma+matriz[i,j]
		FinPara
		matriz[i,5]=suma
	FinPara
	
	//Suma de cada Representante-------------------------------------------------------------------------
	suma=0
	Para j=1 hasta 5-1 Hacer
		suma=0
		Para i=1 hasta 6-1 Hacer
			suma=suma+matriz[i,j]
			matriz[6,j] = suma
		FinPara
		
	FinPara
	
	//Total de ventas de TODOS los representantes-------------------------------------------------------
	suma=0
	Para i=6 hasta 6 Hacer
		suma=0
		Para j=1 Hasta 4 hacer
			suma=suma+matriz[i,j]
			matriz[6,6]=suma
		FinPara
		
	FinPara
	
	mostrarmatriz(matriz)	
	
FinSubProceso

//---------------------------------------------------------------------------------------------------------
SubProceso mostrarmatriz(matriz)
	Definir i, j Como Entero
	
	Para i=0 Hasta 7-1 Hacer
		Para j=0 Hasta 7-1 Hacer
			si i=0 y j=1 Entonces
				Escribir Sin Saltar "         REPRE1º"
			Sino 
				si i=0 y j=2 Entonces
					Escribir Sin Saltar " REPRE2º "
				SiNo
					si i=0 y j=3 Entonces
						Escribir Sin Saltar "REPRE3º"
					SiNo
						si i=0 y j=4 Entonces
							Escribir Sin Saltar " REPREº4"
						SiNo
							si i=0 y j=5 Entonces
								Escribir Sin Saltar " TOTALxZONA"
							SiNo
								si i=0 y j=6 Entonces
									Escribir Sin Saltar ""
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
				Escribir Sin Saltar "ZONA Nº", i
			sino 
				Escribir  Sin Saltar"   [", matriz[i,j], "]  "
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i=6 hasta 6 Hacer
		Para j=0 hasta 4 Hacer
			Si j=0 Entonces
				Escribir sin saltar "TotalxREPRE"
			SiNo
				Escribir Sin Saltar" [", matriz[i,j], "]  "
			FinSi
		FinPara
	FinPara
	
	Para i=6 hasta 6 Hacer
		Para j=5 hasta 6 Hacer
			Si j=5 Entonces
				Escribir sin saltar "TOTALTODOS "
			SiNo
				si j=6 Entonces
					Escribir sin saltar " [", matriz[i,j], "] "
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir ""	
FinSubProceso
	