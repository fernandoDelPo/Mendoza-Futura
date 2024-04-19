Algoritmo sin_titulo
	//Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin
	//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
	//investigar la función trunc().
	
	Definir num, div, contador Como Entero
	
	Escribir "Ingrese le número para extraer sus dígitos"
	Leer num
	contador=0
	Mientras num<>0 Hacer
		div<- num MOD 10
		num<- TRUNC (num/10)
		contador=contador+1
	FinMientras
	Escribir "El número ingresado tiene ", contador, " dígitos"
	
FinAlgoritmo
