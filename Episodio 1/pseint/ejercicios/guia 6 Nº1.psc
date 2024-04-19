Algoritmo sin_titulo
	//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
	//muestre por pantalla.
	Definir numbers, i Como Entero
	Dimension numbers(5)
	
	Escribir "Ingresa los cinco (5) elementos de tu vector"
	Para i=0 hasta 4 Hacer
		Leer numbers[i]
	FinPara
	
	Para i=0 Hasta 4 Hacer
		Escribir "[", numbers(i), "]" sin saltar
	FinPara
	Escribir ""
FinAlgoritmo
