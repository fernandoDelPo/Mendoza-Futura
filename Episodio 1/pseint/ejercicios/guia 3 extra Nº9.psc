Algoritmo sin_titulo
	//Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
	//decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
	//de los siguientes valores: 2+4+6+8+10.
	
	Definir num, par, contadorpar, suma Como Real
	
	num=0
	par=0
	contadorpar=0
	suma=0
	
	Hacer 
		Escribir "Ingrese un numero"
		leer num
		Si (num MOD 2 =0) Entonces
			par=par+num
			contadorpar=contadorpar+1
			
		FinSi
	Mientras Que contadorpar<=5
	
	Escribir"La suma de los CINCO números pares ingresados es: ", par
	
FinAlgoritmo
