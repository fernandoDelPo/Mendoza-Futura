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
	Definir i, j Como Entero
	Para i=1 Hasta 5 Hacer
		Para j=1 Hasta 5 Hacer
			matriz[i,j]=Aleatorio(0,5000)
		FinPara
	FinPara
	matriz[0,1] = "LUNES"
	matriz[0,2] = "MARTES"
	matriz[0,3] = "MIERCOLES"
	matriz[0,4] = "JUEVES"
	matriz[0,5] = "VIERNES"
	matriz[0,6] = "TOTAL SEMANAL PRODUCTO"
	matriz[1,0] = "PRODUCTO 1"
	matriz[2,0] = "PRODUCTO 2"
	matriz[3,0] = "PRODUCTO 3"
	matriz[4,0] = "PRODUCTO 4"
	matriz[5,0] = "PRODUCTO 5"
	matriz[6,0] = "TOTAL DIARIO"
	matriz[7,0] = "PRODUCTO MAS VENDIDO"
	matriz[0,0] = "APP SUPER"
	
	
FinSubProceso
