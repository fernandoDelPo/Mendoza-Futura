Algoritmo sin_titulo
	//Crear un programa que calcule la suma de los enteros positivos pares desde N hasta 2.
	//Chequear que si N es impar se muestre un mensaje de error.
	Definir num Como Real
	Definir a Como Logico
	Escribir "Ingrese un número para sumar su enteros positivos pares."
	Leer num
	
	a=sumarpares(num)

	
FinAlgoritmo
Funcion b=sumarpares(num)
	Definir b Como Logico
	Definir suma, par, i Como Real
	
	suma=0
	Si num Mod 2 <> 0
		Escribir "Error: El número ingresado no es par"
	FinSi
	Para i=num hasta 2 con paso -2 Hacer
		si num mod 2 = 0 Entonces
			par=i
			
		SiNo
			par=i + sumarpares(num-1)
		FinSi
		suma=suma+par
	FinPara
	Si suma mod 2 = 0 Entonces
		b= Verdadero
		Sino b = falso
	FinSi
	
	
	Escribir "La suma de los numeros enteros positivos pares de ", num, " es = ", suma
FinFuncion
