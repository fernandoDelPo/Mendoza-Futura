Algoritmo sin_titulo
	// Realizar un programa que calcule la siguiente sumatoria:
	//1 + 1/2! + 1/3! + ? + 1/n!
	//donde n es un valor entero ingresado por el usuario y n! es el factorial de ese número.
	
	
	Definir fact, num, num1, i, j, suma, suma1, contador Como real
	Escribir "Ingrese un numero"
	leer num
	i=0
	j=0
	contador=1
	num1=1
	suma=0
	suma1=1
	fact=1
	Para i=1 hasta num Hacer
		fact=(fact * contador)
		Para j=1 hasta 1 Hacer
			
			
			Escribir Sin Saltar  j, "/", i,"!", " + ", " "
			
		FinPara
		contador=contador+1
		suma=suma + fact
		
	FinPara
	Escribir "El factorial de ", num, " es ",fact, "!"
FinAlgoritmo
