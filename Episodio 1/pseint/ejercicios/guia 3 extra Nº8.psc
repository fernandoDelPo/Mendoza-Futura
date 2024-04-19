Algoritmo sin_titulo
	//Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
	//ingresará diez números.
	
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
	
	Escribir "La media de los números pares es: ", totalpar
	Escribir "La media de los números impares es: ", totalimpar
	
FinAlgoritmo
