Algoritmo sin_titulo
	//Realizar una función que calcule y retorne la suma de todos los divisores del número n
	//distintos de n. El valor de n debe ser ingresado por el usuario.
	
	Definir num Como Real
	Escribir "Ingrese un número para sumar sus divisores"
	Leer num
	
	Escribir "La suma de los números divisores de ", num, " es: ", sumaDivisores(num)
	
	
	
FinAlgoritmo

Funcion suma = sumaDivisores(num1)
	Definir suma, i Como Real
	suma=0
	Para i=1 Hasta num1 Hacer
		Si num1 MOD i = 0 Entonces
			suma = suma + i
		FinSi
	FinPara
	Suma = suma - num1
FinFuncion
