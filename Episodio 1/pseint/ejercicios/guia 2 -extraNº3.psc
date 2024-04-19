Algoritmo Par_Impar_2_numeros
	Definir num1, num2 Como Real
	Escribir "Por favor ingrese los números"
	Leer num1, num2;
	
	Limpiar Pantalla
	
	Si num1 MOD 2 = 0 y num2 MOD 2 = 0 Entonces
		Escribir num1, " y ", num2  " Son numeros pares."
	SiNo
		Escribir " Los números no son pares, o al menos uno de ellos no es par."
	FinSi
	
	
FinAlgoritmo
