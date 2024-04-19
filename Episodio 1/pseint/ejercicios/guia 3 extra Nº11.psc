Algoritmo sin_titulo
	//Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de
	//3 comprendidos entre 1 y 100.
	Definir contadorpar, contadorimpar, i, k Como Real
	
	i=0
	k=0
	contadorpar=0
	contadorimpar=0
	
	Para i<-1 Hasta 100 Con Paso 1 Hacer
		Si i MOD 2 = 0 Entonces
			contadorpar=contadorpar+1
		Sino 
			Si i MOD 3 = 0 Entonces
				contadorimpar=contadorimpar+1
			FinSi
		FinSi
	FinPara
	
	Escribir "En la serie comprendida entre 1-100, la cantidad de cifras múltiplo de 2 es: ", contadorpar
	Escribir "En la serie comprendida entre 1-100, la cantidad de cifras múltiplo de 3 es: ", contadorimpar
FinAlgoritmo
