Algoritmo sin_titulo
	//Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin
	//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
	//investigar la funci�n trunc().
	
	Definir num, div, contador Como Entero
	
	Escribir "Ingrese le n�mero para extraer sus d�gitos"
	Leer num
	contador=0
	Mientras num<>0 Hacer
		div<- num MOD 10
		num<- TRUNC (num/10)
		contador=contador+1
	FinMientras
	Escribir "El n�mero ingresado tiene ", contador, " d�gitos"
	
FinAlgoritmo
