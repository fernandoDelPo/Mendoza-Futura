Algoritmo funcion_Suma
	//Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le
	//pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
	//calcular� la suma y lo devolver� para imprimirlo en el algoritmo.
	
	Definir num1, num2, resultado Como Real
	Escribir "Ingrese los n�meros a sumar"
	Leer num1, num2
	
	resultado=realizarSuma(num1, num2)
	Escribir "El resultado de la suma es: ", resultado
	
	
	
	
FinAlgoritmo

Funcion suma = realizarSuma(nume1, nume2)
	Definir suma Como Entero
	suma= nume1 + nume2
	
FinFuncion
