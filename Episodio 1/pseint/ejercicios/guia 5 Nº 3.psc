Algoritmo sin_titulo
	//Crea una función EsMultiplo que reciba los dos números pasados por el usuario,
	//validando que el primer numero múltiplo del segundo y devuelva verdadero si el
	//primer numero es múltiplo del segundo, sino es múltiplo que devuelva falso.
	
	Definir num1, num2 Como Real
	Definir a Como Logico
	Escribir "Ingrese dos números para determinar si son múltiplos entre sí."
	Leer num1, num2	
	
	a=multiplos(num1, num2)
	Escribir "¿Los números ingresados son múltiplos entre sí?"
	
	Si a = Verdadero Entonces
		Escribir a, " son múltiplos entre sí"
	SiNo
		Escribir a, " no son múltiplos entre sí"
	FinSi
	
	
	
FinAlgoritmo
Funcion b = multiplos(numA, numB)
	Definir b Como Logico
	
	Si numA MOD numB = 0 Entonces
		b<-Verdadero
	SiNo
		b<-Falso
	FinSi
FinFuncion
	