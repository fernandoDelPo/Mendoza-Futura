Algoritmo sin_titulo
	//Crear una función que devuelva la diferencia que hay entre el valor más chico de un
	//arreglo y su valor más grande.
	Definir vector, a Como Real
	Dimension vector(20)
	
	a=diferencia(vector)
	
Escribir "La diferencia que hay entre el valor más chico del arreglo y su valor más grande es de: ", a
	
FinAlgoritmo

Funcion b=diferencia(vector) 
	Definir i, max, min, b Como Real
	i=0
	max=0
	min=50
	
	Para i=0 Hasta 20-1 Hacer
		vector(i)=Aleatorio(0,50)
		Escribir Sin Saltar" [", vector(i), "] "
	FinPara
	
	Para i=0 Hasta 20-1 Hacer
		Si vector(i) >= max Entonces
			max=vector(i)
		Sino
			si vector(i) <= min Entonces
				min=vector(i)
			FinSi
		FinSi
	FinPara
	Escribir ""
	Escribir "Valor máximo: ", max
	Escribir "Valor mínimo: ", min
	Escribir ""
	b=max-min
	
FinFuncion
