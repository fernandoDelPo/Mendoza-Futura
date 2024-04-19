Algoritmo sin_titulo
	//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo
	//y muestre por pantalla la suma, resta y multiplicación de todos los números ingresados
	//al arreglo.
	
	Definir vector, i, suma, resta, multiplicacion Como Real
	Dimension vector(10)
	suma=0
	resta=0
	multiplicacion=1
	
	Escribir "Ingresa los diez (10) números que utilizarás en las operaciones aritméticas."
	
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
	
	Escribir "La suma de los números ingresados es: ", suma
	Escribir "La resta de los números ingresados es: ", resta
	Escribir "La multiplicación de los números ingresados es: ", multiplicacion
	Escribir ""
	
FinAlgoritmo
