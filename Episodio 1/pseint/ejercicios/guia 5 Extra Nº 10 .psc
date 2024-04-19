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
	Definir suma, par Como Real
	
	suma=0
	Si num MOD 2 = 0 Entonces
		par=num MOD 2
		suma=suma+par
	SiNo
		suma= par+sumarpares(num-1)
		
	FinSi
	
	Escribir suma
FinFuncion
