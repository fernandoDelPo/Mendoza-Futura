Algoritmo sin_titulo
	//Hacer un algoritmo para calcular la media de los n�meros pares e impares, s�lo se
	//ingresar� diez n�meros.
	
	Definir num, par, impar, totalpar, totalimpar, contador, contador2, contador3, suma Como Real
	
	contador=0
	contador2=0
	contador3=0
	suma=0
	num=0
	par=0
	impar=0
	totalimpar=0
	Hacer
		Escribir "Ingrese un numero"
		leer num
		contador3=contador3+1
		Si (num MOD 2 =0) Entonces
			par=par+num
			contador=contador+1
			totalpar=par/contador
		SiNo
			impar=impar+num
			contador2=contador2+1
			totalimpar=impar/contador2
		FinSi
		
		
	Mientras Que contador3<=10
	
	Escribir "La media de los n�meros pares es: ", totalpar
	Escribir "La media de los n�meros impares es: ", totalimpar
	
FinAlgoritmo
