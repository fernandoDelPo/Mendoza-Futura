Algoritmo seriefibo
	//Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci
	Definir num, fibo Como Entero
	Escribir "Ingrese un n�mero"
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
