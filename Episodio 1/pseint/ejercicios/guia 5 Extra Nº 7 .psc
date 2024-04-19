Algoritmo seriefibo
	//Realizar una función que permita obtener el término n de la sucesión de Fibonacci
	Definir num, fibo Como Entero
	Escribir "Ingrese un número"
	leer num
	
	fibo=seriefibonacci(num)
FinAlgoritmo

//----------------------------------------------------------------
Funcion fibo=seriefibonacci(num)
	Definir fibo, contador, num1, num2, num3 Como Entero
	num1=0
	num2=1
	num3=0
	contador=0
	
	Mientras num3<=num Hacer
		Escribir sin saltar num3, ", "
		num1=num2
		num2=num3
		num3=num1+num2
		contador=contador +1
	FinMientras
	Escribir ""
FinFuncion
