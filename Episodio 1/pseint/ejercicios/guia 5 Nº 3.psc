Algoritmo sin_titulo
	//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario,
	//validando que el primer numero m�ltiplo del segundo y devuelva verdadero si el
	//primer numero es m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.
	
	Definir num1, num2 Como Real
	Definir a Como Logico
	Escribir "Ingrese dos n�meros para determinar si son m�ltiplos entre s�."
	Leer num1, num2	
	
	a=multiplos(num1, num2)
	Escribir "�Los n�meros ingresados son m�ltiplos entre s�?"
	
	Si a = Verdadero Entonces
		Escribir a, " son m�ltiplos entre s�"
	SiNo
		Escribir a, " no son m�ltiplos entre s�"
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
	