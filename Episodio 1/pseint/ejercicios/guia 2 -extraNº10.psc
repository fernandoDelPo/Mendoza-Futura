Algoritmo Verduleria
	
	Definir kilos, desc, punitario, pfinal Como Real
	
	Escribir "Cantidad de kilos comprados"
	Leer kilos;
	
	punitario=10
	
	Si kilos>=0 y kilos<=2 Entonces
		desc=kilos*punitario
	SiNo
		si kilos>=2.01 y kilos <=5 Entonces
			desc=((kilos*punitario)*10)/100
			pfinal=(kilos*punitario)-desc
		SiNo
			si kilos >=5.01 y kilos<=10 Entonces
				desc=((kilos*punitario)*15)/100
				pfinal=(kilos*punitario)-desc
			SiNo
				si kilos >= 10.01 Entonces
					desc=((kilos*punitario)*20)/100
					pfinal=(kilos*punitario)-desc
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "El precio total a pagar es de: $ ", pfinal
	Escribir "El descuento final en la compra es de $ ", desc
	
FinAlgoritmo
