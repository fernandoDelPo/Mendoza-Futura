Algoritmo sin_titulo
	//Realizar un programa que lea 10 n�meros reales por teclado, los almacene en un arreglo
	//y muestre por pantalla la suma, resta y multiplicaci�n de todos los n�meros ingresados
	//al arreglo.
	
	Definir vector, i, suma, resta, multiplicacion Como Real
	Dimension vector(10)
	suma=0
	resta=0
	multiplicacion=1
	
	Escribir "Ingresa los diez (10) n�meros que utilizar�s en las operaciones aritm�ticas."
	
	Para i=0 Hasta 9 Hacer
		Leer vector(i)
	FinPara
	
	Para i=0 hasta 9 Hacer
		resta=resta-vector(i)
	FinPara
	
	Para i=0 hasta 9 Hacer
		suma=suma+vector(i)
	FinPara
	Para i=9 hasta 0 Con Paso -1 Hacer
		multiplicacion=multiplicacion*vector(i)
	FinPara
	
	Para i=0 hasta 9 Hacer
		Escribir Sin Saltar "[", vector(i), "]"
	FinPara
	
	Escribir "La suma de los n�meros ingresados es: ", suma
	Escribir "La resta de los n�meros ingresados es: ", resta
	Escribir "La multiplicaci�n de los n�meros ingresados es: ", multiplicacion
	Escribir ""
	
FinAlgoritmo
