Algoritmo sin_titulo
	//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como
	//numero entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner
	//números con decimales
	
	
	definir num como cadena
	definir a Como Entero
	Escribir "Ingrese un numero"
	leer num
	
	
	a=convertirAentero(num)
	Escribir "El valor del número ingresado como cadena es: ", a
	
	
FinAlgoritmo

Funcion numeroentero = convertirAentero(num)
	definir numeroentero Como entero
	Definir num1 Como Real
	
	num1=ConvertirANumero(num)
	Si num1 <=999 Entonces
		numeroentero=num1
	Sino 
		Escribir "El número ingresado supera los 3 dígitos"
	FinSi
	
FinFuncion



