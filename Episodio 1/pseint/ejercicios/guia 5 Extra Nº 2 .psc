Algoritmo sin_titulo
	//Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como
	//numero entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner
	//n�meros con decimales
	
	
	definir num como cadena
	definir a Como Entero
	Escribir "Ingrese un numero"
	leer num
	
	
	a=convertirAentero(num)
	Escribir "El valor del n�mero ingresado como cadena es: ", a
	
	
FinAlgoritmo

Funcion numeroentero = convertirAentero(num)
	definir numeroentero Como entero
	Definir num1 Como Real
	
	num1=ConvertirANumero(num)
	Si num1 <=999 Entonces
		numeroentero=num1
	Sino 
		Escribir "El n�mero ingresado supera los 3 d�gitos"
	FinSi
	
FinFuncion



