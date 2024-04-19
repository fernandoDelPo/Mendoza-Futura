Algoritmo sin_titulo
	//Escriba un programa que solicite al usuario números decimales mientras que el usuario
	//escriba números mayores al primero que se ingresó. Por ejemplo: si el usuario ingresa
	//como primer número un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
	//número. El programa continuará solicitando valores sucesivamente mientras los valores
	//ingresados sean mayores que 3.1, caso contrario, el programa finaliza.
	
	
	Definir min, num Como Real
	
	Escribir "Ingrese un número con decimal mínimo"
	leer min
	
	Escribir "Ingrese un número mayor al número decimal antes ingresado"
	Leer num
	
	Mientras num>min Hacer
		Escribir "Ingrese nuevamente un número mayor al número decimal ingresado al inicio"
		Leer num
	FinMientras
	
	Escribir "Gracias por su tiempo"
	
FinAlgoritmo
