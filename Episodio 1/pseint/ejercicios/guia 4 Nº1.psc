Algoritmo sin_titulo
	//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo
	//entero. La variable A, debe terminar con el valor de la variable B.
	
	Definir a, b  Como Entero
	Escribir "Ingresa los valores de a y b para intercambiar" 
	leer a , b
	
	intercambio(a,b)
	Escribir "Ahora a= ", a
	Escribir "Ahora b= ", b
	
FinAlgoritmo
SubProceso intercambio (a Por Referencia,b Por Referencia)
	definir aux Como Entero
	aux=a
	a=b
	b=aux
	
FinSubProceso
